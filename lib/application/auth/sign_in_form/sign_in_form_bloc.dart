// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/domain/auth/auth_failure.dart';
import 'package:kantor_tukan/domain/auth/i_auth_facade.dart';
import 'package:kantor_tukan/domain/auth/value_object.dart';

part 'sign_in_form_bloc.freezed.dart';

part 'sign_in_form_event.dart';

part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>(
      (signInEvent, emitEvent) {
        signInEvent.map(
          emailChanged: _emailChanged,
          passwordChanged: _passwordChanged,
          signInWithEmailAndPasswordPressed: _signInWithEmailAndPassword,
          signInWithGooglePressed: _signInWithGoogle,
        );
      },
    );
  }

  // void _passwordRepeatCheckEqual(PasswordRepeatCheckEqual e) {
  //   final password = state.password.value.fold((l) => '', (r) => r);
  //   final passwordRepeat = state.repeatPassword.value.fold((l) => '', (r) => r);
  //
  //   if (_isPasswordsEqual(password, passwordRepeat)) {
  //     emit(state.copyWith(
  //       isPasswordsEqual: true,
  //       showErrorMessages: false,
  //       authFailureOrSuccessOption: none(),
  //     ));
  //   } else {
  //     emit(state.copyWith(
  //       isPasswordsEqual: false,
  //       showErrorMessages: true,
  //       authFailureOrSuccessOption: none(),
  //     ));
  //   }
  // }

  // bool _isPasswordsEqual(String password, String passwordRepeat) => password == passwordRepeat;

  void _emailChanged(EmailChanged e) {
    emit(state.copyWith(
      emailAddress: EmailAddress(e.emailStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  void _passwordChanged(PasswordChanged e) {
    emit(state.copyWith(
      password: Password(e.password),
      authFailureOrSuccessOption: none(),
    ));
  }

  // void _registerWithEmailAndPassword(_) {
  //   emit(state.copyWith(authFailureOrSuccessOption: none()));
  //   bool isPasswordsEqual = state.isPasswordsEqual;
  //
  //   if (isPasswordsEqual) {
  //     _performActionOnAuthFacadeWithEmailAndPassword(_authFacade.registerWithEmailAndPassword);
  //   } else {
  //     emit(state.copyWith(
  //         isPasswordsEqual: false, authFailureOrSuccessOption: optionOf(const Left(AuthFailure.passwordsNotEqual()))));
  //   }
  // }

  void _signInWithEmailAndPassword(_) {
    _performActionOnAuthFacadeWithEmailAndPassword(_authFacade.signInWithEmailAndPassword);
  }

  void _signInWithGoogle(_) async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));

    final failureOrSuccess = await _authFacade.signInWithGoogle();
    emit(state.copyWith(isSubmitting: false, authFailureOrSuccessOption: some(failureOrSuccess)));
  }

  void _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({required EmailAddress emailAddress, required Password password})
        forwardedCall,
  ) async {
    Either<AuthFailure, Unit>? failureOrSuccess;
    bool _showErrorMessage = true;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    if (failureOrSuccess != null) {
      if (failureOrSuccess.isRight()) {
        _showErrorMessage = false;
      }
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: _showErrorMessage,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
