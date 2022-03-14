part of 'register_form_bloc.dart';

@freezed
class RegisterFormEvent with _$RegisterFormEvent {

  const factory RegisterFormEvent.emailChanged(String emailStr) = EmailChanged;

  const factory RegisterFormEvent.passwordChanged(String password) =
  PasswordChanged;

  const factory RegisterFormEvent.passwordRepeatChanged(String password) =
  PasswordRepeatChanged;

  const factory RegisterFormEvent.registerWithEmailAndPasswordPressed() =
 RegisterWithEmailAndPasswordPressed;
}
