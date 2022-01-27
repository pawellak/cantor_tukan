part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress email,

    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

   factory SignInFormState.initial() =>
      SignInFormState(
          email: EmailAddress(''),
          password: Password(''),
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: none());
}
