import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:kantor_tukan/domain/transaction/transaction_failure.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

class ErrorSnackBar {
  failure(TransactionFailure failure, BuildContext context) {
    FlushbarHelper.createError(
      message: failure.map(
          noInternet: (_) => TransactionConstants.noInternet,
          unexpected: (_) => TransactionConstants.unexpected,
          insufficientPermission: (_) => TransactionConstants.insufficientPermission,
          notFound: (_) => TransactionConstants.notFound),
    ).show(context);
  }
}
