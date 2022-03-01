part of 'sign_in_form_bloc.dart';

const emptyString = '';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
      emailAddress: EmailAddress(emptyString),
      password: Password(emptyString),
      isSubmitting: false,
      showErrorMessages: false,
      authFailureOrSuccessOption: none());
}
