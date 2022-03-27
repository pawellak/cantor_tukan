import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/auth/auth_failure.dart';
import 'package:kantor_tukan/presentation/sign_in/constants.dart';

class ErrorSnackBar {
  void call(BuildContext context, AuthFailure failure) {
    FlushbarHelper.createError(
        message: failure.map(noInternet: (_){
          return SignInConstants.noInternet;
        },passwordsNotEqual: (_) {
      return SignInConstants.passwordsNotEqual;
    }, cancelledByUser: (_) {
      return SignInConstants.canceled;
    }, serverError: (_) {
      return SignInConstants.serverError;
    }, emailAlreadyInUse: (_) {
      return SignInConstants.emailInUse;
    }, invalidEmailAndPasswordCombination: (_) {
      return SignInConstants.invalidEmailOrPassword;
    })).show(context);
  }
}
