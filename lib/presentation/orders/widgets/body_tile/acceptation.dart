import 'package:flutter/material.dart';

import '../../../../domain/core/enums.dart';
import '../../../../domain/core/value_converters.dart';
import '../../../../domain/transaction/transaction.dart';
import '../../constants.dart';
import '../list_point/list_point.dart';

class TransactionAcceptation {
  Widget call(Transaction userTransaction) {
    String sAcceptationDate = _getDateOfAcceptation(userTransaction);

    return ListPoint(title: OrdersConstants.dateAcceptation, description: sAcceptationDate);
  }

  String _getDateOfAcceptation(Transaction userTransaction) {
    String sAcceptationDate;
    EnumTransactionStatus transactionStatus = userTransaction.transactionStatus.getOrCrash();
    var acceptationTime = userTransaction.dateAcceptation.getOrCrash();

    if (_isTransactionAccepted(transactionStatus)) {
      sAcceptationDate = _toDailyDate(acceptationTime);
    } else {
      sAcceptationDate = OrdersConstants.transactionNotAccepted;
    }
    return sAcceptationDate;
  }

  bool _isTransactionAccepted(EnumTransactionStatus transactionStatus) =>
      transactionStatus == EnumTransactionStatus.accepted;

  String _toDailyDate(DateTime acceptationTime) {
    return ValueConverters()
        .toDailyTimeStringFromDateTime(acceptationTime)
        .getOrElse(() => OrdersConstants.transactionNotAccepted);
  }
}
