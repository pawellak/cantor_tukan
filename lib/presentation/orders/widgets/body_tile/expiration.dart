import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/core/enums.dart';

import '../../../../domain/core/value_converters.dart';
import '../../../../domain/transaction/transaction.dart';
import '../../constants.dart';
import '../list_point/list_point.dart';

class TransactionExpiration {
  Widget call(Transaction userTransaction) {
    String sReservationDate = _getReservationDate(userTransaction);

    return ListPoint(title: OrdersConstants.dateExpiration, description: sReservationDate);
  }

  String _getReservationDate(Transaction userTransaction) {
    DateTime dateOfAcceptation = userTransaction.dateAcceptation.getOrCrash();
    EnumTransactionStatus transactionStatus = userTransaction.transactionStatus.getOrCrash();

    switch (transactionStatus) {
      case EnumTransactionStatus.pending:
        return OrdersConstants.transactionPending;
      case EnumTransactionStatus.accepted:
        return _getExpirationDate(dateOfAcceptation);
      case EnumTransactionStatus.decline:
        return OrdersConstants.transactionDecline;
      case EnumTransactionStatus.undefined:
        return OrdersConstants.transactionDecline;
    }
  }

  String _getExpirationDate(DateTime dateOfAcceptation) {
    DateTime expirationTime = dateOfAcceptation.add(const Duration(hours: OrdersConstants.expirationTimeInHour));
    return _toDailyDate(expirationTime);
  }

  String _toDailyDate(DateTime acceptationTime) {
    return ValueConverters()
        .toDailyTimeStringFromDateTime(acceptationTime)
        .getOrElse(() => OrdersConstants.transactionDecline);
  }
}
