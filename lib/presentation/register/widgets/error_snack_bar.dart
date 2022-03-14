import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/auth/auth_failure.dart';

import '../constants.dart';

class ErrorSnackBar {
  void call(BuildContext context, AuthFailure failure) {
    FlushbarHelper.createError(
        message: failure.map(noInternet: (_) {
      return RegisterConstants.noInternet;
    }, passwordsNotEqual: (_) {
      return RegisterConstants.passwordsNotEqual;
    }, cancelledByUser: (_) {
      return RegisterConstants.canceled;
    }, serverError: (_) {
      return RegisterConstants.serverError;
    }, emailAlreadyInUse: (_) {
      return RegisterConstants.emailInUse;
    }, invalidEmailAndPasswordCombination: (_) {
      return RegisterConstants.invalidEmailOrPassword;
    })).show(context);
  }
}
