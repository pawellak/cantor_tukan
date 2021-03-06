part of 'transaction_actor_bloc.dart';


@freezed
abstract class TransactionActorState with _$TransactionActorState
{
  const factory TransactionActorState.initial() = _Initial;
  const factory TransactionActorState.actionInProgress() = _ActionInProgress;
  const factory TransactionActorState.deleteFailure(TransactionFailure transactionFailure) = _DeleteFailure;
  const factory TransactionActorState.deleteSuccess() = _DeleteSuccess;
}