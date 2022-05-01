import 'package:flutter/material.dart';

import '../../../../domain/core/value_converters.dart';
import '../../../../domain/transaction/transaction.dart';
import '../../constants.dart';
import '../list_point/list_point.dart';

class TransactionReservation {
  Widget call(Transaction userTransaction) {
    String sReservationDate = _getReservationDate(userTransaction);
    return ListPoint(title: OrdersConstants.dateReservation, description: sReservationDate);
  }

  String _getReservationDate(Transaction userTransaction) {
    DateTime reservationDate = userTransaction.dateReservation.getOrCrash();
    return _toDailyDate(reservationDate);
  }

  String _toDailyDate(DateTime acceptationDate) {
    return ValueConverters()
        .toDailyTimeStringFromDateTime(acceptationDate)
        .getOrElse(() => OrdersConstants.transactionDecline);
  }
}
