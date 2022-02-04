part of 'app_auth_bloc.dart';

@freezed
abstract class AppAuthState with _$AppAuthState
{
  const factory AppAuthState.initial() = Initial;
  const factory AppAuthState.authenticated() = Authenticated;
  const factory AppAuthState.unauthenticated() = Unauthenticated;
}