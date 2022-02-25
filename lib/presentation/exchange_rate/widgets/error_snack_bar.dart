import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/exchange_rate/cantor_remote_failure.dart';

const incorrectDataError = 'Błąd servera, niepoprawne dane wejściowe';
const serverError = 'Błąd servera';

class ErrorSnackBar {
  void failure(CantorRemoteFailure failure, BuildContext context) {
    FlushbarHelper.createError(
      message: failure.map(
        serverError: (_) {
          return serverError;
        },
        incorrectDataError: (_) {
          return serverError;
        },
      ),
    ).show(context);
  }
}
