import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kantor_tukan/domain/auth/auth_failure.dart';
import 'package:kantor_tukan/domain/auth/i_auth_facade.dart';
import 'package:kantor_tukan/domain/auth/value_object.dart';

part 'sign_in_form_bloc.freezed.dart';

part 'sign_in_form_event.dart';

part 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) {
      event.map(emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      }, passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          authFailureOrSuccessOption: none(),
        );
      }, registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.registerWithEmailAndPassword);
      }, signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.signInWithEmailAndPassword);
      }, signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrSuccess));
      });
    });
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
