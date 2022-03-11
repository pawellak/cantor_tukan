import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/exchange_rate/cantor_remote_failure.dart';
import 'package:kantor_tukan/presentation/internet/internet_page.dart';

const incorrectDataError = 'błąd servera, niepoprawne dane wejściowe';
const serverError = 'błąd servera';
const noInternet = 'brak internetu';

class ErrorSnackBar {
  void failure(CantorRemoteFailure failure, BuildContext context) {
    String? failureMessage;
    failureMessage = failure.map(
      noInternet: (_) {
        _navigateToNoInternetPage(context);
        return null;
      },
      serverError: (_) {
        _navigateToNoInternetPage(context);
        return serverError;
      },
      incorrectDataError: (_) {
        return incorrectDataError;
      },
    );

    if (failureMessage != null) {
      FlushbarHelper.createError(
        message: failureMessage,
      ).show(context);
    }
  }

  void _navigateToNoInternetPage(BuildContext context) {
    Navigator.of(context).popAndPushNamed(InternetPage.routeName);
  }
}
