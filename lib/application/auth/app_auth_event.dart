part of 'app_auth_bloc.dart';

@freezed
abstract class AppAuthEvent with _$AppAuthEvent
{
  const factory AppAuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AppAuthEvent.resetState() = ResetState;
  const factory AppAuthEvent.signedOut() = SignedOut;
}

