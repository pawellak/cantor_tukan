import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:kantor_tukan/domain/transaction/transaction_failure.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

class ErrorSnackBar {
  failure(TransactionFailure failure, BuildContext context) {
    FlushbarHelper.createError(
      message: failure.map(
          noInternet: (_) => Constants.noInternet,
          unexpected: (_) => Constants.unexpected,
          insufficientPermission: (_) => Constants.insufficientPermission,
          notFound: (_) => Constants.notFound),
    ).show(context);
  }
}
