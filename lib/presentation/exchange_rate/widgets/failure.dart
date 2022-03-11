import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/error_snack_bar.dart';

import '../../../domain/exchange_rate/cantor_remote_failure.dart';

class ExchangeRateFailure
{
  void call(CantorRemoteFailure failure, BuildContext context) {
    ErrorSnackBar().failure(failure, context);
  }
}
