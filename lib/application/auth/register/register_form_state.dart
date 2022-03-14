part of 'register_form_bloc.dart';

const emptyString = '';

@freezed
class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    required EmailAddress emailAddress,
    required Password password,
    required Password passwordRepeat,
    required bool showErrorMessage,
    required bool isSubmitting,
    required bool isPasswordsEqual,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        emailAddress: EmailAddress(emptyString),
        password: Password(emptyString),
        passwordRepeat: Password(emptyString),
        isSubmitting: false,
        isPasswordsEqual: false,
        showErrorMessage: false,
        authFailureOrSuccessOption: none(),
      );
}
