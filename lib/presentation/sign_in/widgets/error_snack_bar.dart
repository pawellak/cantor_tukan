import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';

const canceled = 'Anuluwano operację';
const serverError = 'Błąd servera';
const emailInUse = 'Adres email w użyciu';
const invalidEmailOrPassword = 'Niepawidłowe dane logowania';

class ErrorSnackBar {
  void call(SignInFormState state, BuildContext context) {
    state.authFailureOrSuccessOption.fold(
      () {},
      (either) => {
        either.fold(
          (failure) {
            FlushbarHelper.createError(
                message: failure.map(cancelledByUser: (_) {
              return canceled;
            }, serverError: (_) {
              return serverError;
            }, emailAlreadyInUse: (_) {
              return emailInUse;
            }, invalidEmailAndPasswordCombination: (_) {
              return invalidEmailOrPassword;
            })).show(context);
          },
          (r) {
            //go to another page
          },
        )
      },
    );
  }
}
