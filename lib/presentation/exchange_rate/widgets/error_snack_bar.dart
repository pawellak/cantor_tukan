import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:kantor_tukan/application/exchange_form/exchange_rate_bloc.dart';

const incorrectDataError = 'Błąd servera, niepoprawne dane wejściowe';
const serverError = 'Błąd servera';

class ErrorSnackBar {
  void call(ExchangeRateState state, BuildContext context) {
    state.failureOrSuccessOption.fold(
      () {},
      (either) => {
        either.fold(
          (failure) {
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
          },
          (r) {
            //go to another page
          },
        )
      },
    );
  }
}
