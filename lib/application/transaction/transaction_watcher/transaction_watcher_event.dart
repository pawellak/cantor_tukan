part of 'transaction_watcher_bloc.dart';

@freezed
abstract class TransactionWatcherEvent with _$TransactionWatcherEvent {
  const factory TransactionWatcherEvent.watchAllTransaction() = _WatchAllTransaction;

  const factory TransactionWatcherEvent.watchAcceptedTransaction() = _WatchAcceptedTransaction;

  const factory TransactionWatcherEvent.watchDeclineTransaction() = _WatchDeclineTransaction;

  const factory TransactionWatcherEvent.watchPendingTransaction() = _WatchPendingTransaction;

  const factory TransactionWatcherEvent.transactionReceived(
      Either<TransactionFailure, KtList<Transaction>> failureOrTransaction) = _TransactionReceived;
}
