import 'package:flutter/material.dart';

import '../../../application/exchange_form/exchange_rate_bloc.dart';
import '../../../domain/exchange_rate/cantor_remote_failure.dart';
import 'failure.dart';
import 'success.dart';

class ExchangeRateListener
{
  void call(BuildContext context, ExchangeRateState state) {
    state.failureOrSuccessOption.fold(_getNone, (either) {
      either.fold((CantorRemoteFailure failure) {
        ExchangeRateFailure().call(failure, context);
      }, (_) {
        ExchangeRateSuccess().call(state, context);
      });
    });
  }
  Null _getNone() {}
}