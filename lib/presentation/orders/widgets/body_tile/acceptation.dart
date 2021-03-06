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
    EnumTransactionStatus transactionStatus = userTransaction.transactionStatus.getOrCrash();
    var acceptationTime = userTransaction.dateAcceptation.getOrCrash();

    switch (transactionStatus) {
      case EnumTransactionStatus.pending:
        return OrdersConstants.transactionPending;
      case EnumTransactionStatus.accepted:
        return _toDailyDate(acceptationTime);
      case EnumTransactionStatus.decline:
        return OrdersConstants.transactionDecline;
      case EnumTransactionStatus.undefined:
        return OrdersConstants.transactionDecline;
    }
  }

  String _toDailyDate(DateTime acceptationTime) {
    return ValueConverters()
        .toDailyTimeStringFromDateTime(acceptationTime)
        .getOrElse(() => OrdersConstants.transactionDecline);
  }
}
