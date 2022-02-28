part of 'internet_bloc.dart';

@freezed
class NoInternetState  with _$NoInternetState
{
  const factory NoInternetState({required bool isConnected}) = _NoInternetState;
  factory NoInternetState.initial() => const NoInternetState(isConnected: false);
}