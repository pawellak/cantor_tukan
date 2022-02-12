part of 'transaction_actor_bloc.dart';

@freezed
abstract class TransactionActorEvent with _$TransactionActorEvent
{
const factory TransactionActorEvent.deleted(Transaction transaction) = _Deleted;
}
