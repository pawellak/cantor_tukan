part of 'internet_bloc.dart';

@freezed
class InternetState  with _$InternetState
{
  const factory InternetState({required bool isConnected,required bool isSubmitting}) = _InternetState;
  factory InternetState.initial() => const InternetState(isConnected: false,isSubmitting: true);
}