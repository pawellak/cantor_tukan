import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/auth/auth_failure.dart';
import 'package:kantor_tukan/presentation/sign_in/constants.dart';

class ErrorSnackBar {
  void call(BuildContext context, AuthFailure failure) {
    FlushbarHelper.createError(
        message: failure.map(cancelledByUser: (_) {
      return Constants.canceled;
    }, serverError: (_) {
      return Constants.serverError;
    }, emailAlreadyInUse: (_) {
      return Constants.emailInUse;
    }, invalidEmailAndPasswordCombination: (_) {
      return Constants.invalidEmailOrPassword;
    })).show(context);
  }
}
