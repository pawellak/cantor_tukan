import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;

  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  const factory AuthFailure.invalidEmailAndPasswordCombination() = InvalidEmailAndPasswordCombination;

  const factory AuthFailure.passwordsNotEqual() = PasswordsNotEqual;

  const factory AuthFailure.noInternet() = NoInternet;

  // Servers as a "catch all" failure if we don't know what exactly went wrong
  const factory AuthFailure.serverError() = ServerError;
}
