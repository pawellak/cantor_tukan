// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_object.dart';
import '../../../domain/internet/i_internet_connection_checker.dart';

part 'register_form_event.dart';

part 'register_form_state.dart';

part 'register_form_bloc.freezed.dart';

@injectable
class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final IAuthFacade _authFacade;
  final IInternetConnectionChecker _internetConnectionChecker;

  RegisterFormBloc(this._authFacade, this._internetConnectionChecker) : super(RegisterFormState.initial()) {
    on<RegisterFormEvent>((event, emit) {



      event.map(
          emailChanged: _emailChanged,
          passwordChanged: _passwordChanged,
          passwordRepeatChanged: _passwordRepeatChanged,
          registerWithEmailAndPasswordPressed: _registerWithEmailAndPasswordPressed);
    });
  }

  void _emailChanged(EmailChanged e) {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(e.emailStr),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void _passwordChanged(PasswordChanged e) {
    emit(
      state.copyWith(
        password: Password(e.password),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void _passwordRepeatChanged(PasswordRepeatChanged e) {
    emit(
      state.copyWith(
        passwordRepeat: Password(e.password),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void _registerWithEmailAndPasswordPressed(RegisterWithEmailAndPasswordPressed e) async {
    Either<AuthFailure, Unit>? failureOrSuccess;
    bool _showErrorMessage = true;
    _emitSubmitting();

    bool isNotInternet = await _checkInternetConnection();

    if (isNotInternet) {
      _emitNoInternetConnection();
      return;
    }

    if (areInputsValid()) {
      if (arePasswordsEqual()) {
        failureOrSuccess = await _register();
      } else {
        failureOrSuccess = left(const AuthFailure.passwordsNotEqual());
      }
    }

    if (failureOrSuccess != null) {
      if (failureOrSuccess.isRight()) {
        _showErrorMessage = false;
      }
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessage: _showErrorMessage,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

  Future<Either<AuthFailure, Unit>> _register() async =>
      await _authFacade.registerWithEmailAndPassword(emailAddress: state.emailAddress, password: state.password);

  void _emitNoInternetConnection() {
    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(left(const AuthFailure.noInternet())),
    ));
  }

  Future<bool> _checkInternetConnection() async => !await _internetConnectionChecker.hasConnection();

  bool areInputsValid() {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isPasswordRepeatValid = state.passwordRepeat.isValid();
    return isEmailValid & isPasswordValid & isPasswordRepeatValid;
  }

  bool arePasswordsEqual() {
    final password = state.password.getOrCrash();
    final passwordRepeat = state.passwordRepeat.getOrCrash();

    if (password.compareTo(passwordRepeat) == 0) {
      return true;
    } else {
      return false;
    }
  }

  void _emitSubmitting() {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
  }
}
