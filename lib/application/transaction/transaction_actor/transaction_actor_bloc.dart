// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/domain/transaction/transaction.dart';
import 'package:kantor_tukan/domain/transaction/i_transaction_repository.dart';
import 'package:kantor_tukan/domain/transaction/transaction_failure.dart';

part 'transaction_actor_event.dart';

part 'transaction_actor_bloc.freezed.dart';

part 'transaction_actor_state.dart';

@injectable
class TransactionActorBloc extends Bloc<TransactionActorEvent, TransactionActorState> {
  final ITransactionRepository _transactionRepository;


  TransactionActorBloc(this._transactionRepository) : super(const TransactionActorState.initial()) {
    on<TransactionActorEvent>((event, emit) {
      event.map(deleted: _deleted);
    });
  }

  void _deleted(_Deleted deleted) async {
    emit(const TransactionActorState.actionInProgress());
    final possiblyFailure = await _transactionRepository.delete(deleted.transaction);
    possiblyFailure.fold((f) => TransactionActorState.deleteFailure(f), (r) => TransactionActorState.deleteSuccess);
  }
}
