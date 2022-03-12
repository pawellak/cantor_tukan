// ignore_for_file: invalid_use_of_visible_for_testing_member
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/domain/transaction/transaction.dart';
import 'package:kantor_tukan/domain/transaction/i_transaction_repository.dart';
import 'package:kantor_tukan/domain/transaction/transaction_failure.dart';
import 'package:kt_dart/kt.dart';

part 'transaction_watcher_event.dart';

part 'transaction_watcher_state.dart';

part 'transaction_watcher_bloc.freezed.dart';

@injectable
class TransactionWatcherBloc extends Bloc<TransactionWatcherEvent, TransactionWatcherState> {
  final ITransactionRepository _transactionRepository;
  StreamSubscription<Either<TransactionFailure, KtList>>? _transactionStreamSubscription;

  TransactionWatcherBloc(this._transactionRepository) : super(const TransactionWatcherState.initial()) {
    on<TransactionWatcherEvent>(
      (event, emit) {
        event.map(
          watchAllTransaction: _watchAllTransaction,
          watchAcceptedTransaction: _watchAcceptedTransaction,
          watchDeclineTransaction: _watchDeclineTransaction,
          watchPendingTransaction: _watchPendingTransaction,
          transactionReceived: _transactionReceived,
        );
      },
    );
  }

  void _watchAllTransaction(_WatchAllTransaction _) async {
    emit(const TransactionWatcherState.loadInProgress());
    await _transactionStreamSubscription?.cancel();
    Stream<Either<TransactionFailure, KtList<Transaction>>> stream = _transactionRepository.watchAll();
    _transactionStreamSubscription = stream.listen((Either<TransactionFailure, KtList<Transaction>> failureOrNotes) {
      return add(TransactionWatcherEvent.transactionReceived(failureOrNotes));
    });
  }

  void _watchAcceptedTransaction(_) async {
    emit(const TransactionWatcherState.loadInProgress());
    await _transactionStreamSubscription?.cancel();
    _transactionStreamSubscription = _transactionRepository.watchAccepted().listen(
        (Either<TransactionFailure, KtList<Transaction>> failureOrNotes) =>
            add(TransactionWatcherEvent.transactionReceived(failureOrNotes)));
  }

  void _watchDeclineTransaction(_) async {
    emit(const TransactionWatcherState.loadInProgress());
    await _transactionStreamSubscription?.cancel();
    _transactionStreamSubscription = _transactionRepository.watchDecline().listen(
        (Either<TransactionFailure, KtList<Transaction>> failureOrNotes) =>
            add(TransactionWatcherEvent.transactionReceived(failureOrNotes)));
  }

  void _watchPendingTransaction(_) async {
    emit(const TransactionWatcherState.loadInProgress());
    await _transactionStreamSubscription?.cancel();
    _transactionStreamSubscription = _transactionRepository.watchPending().listen(
        (Either<TransactionFailure, KtList<Transaction>> failureOrNotes) =>
            add(TransactionWatcherEvent.transactionReceived(failureOrNotes)));
  }

  void _transactionReceived(_TransactionReceived e) {
    emit(
      e.failureOrTransaction.fold(
        (TransactionFailure failure) {
          return TransactionWatcherState.loadFailure(failure);
        },
        (KtList<Transaction> transaction) {
          return TransactionWatcherState.loadSuccess(transaction);
        },
      ),
    );
  }

  @override
  Future<void> close() async {
    await _transactionStreamSubscription?.cancel();
    return super.close();
  }
}
