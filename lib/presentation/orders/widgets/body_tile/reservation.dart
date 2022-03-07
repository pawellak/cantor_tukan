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
    String sReservationDate;
    DateTime reservationDate = userTransaction.dateReservation.getOrCrash();

    sReservationDate = _toDailyDate(reservationDate);
    return sReservationDate;
  }

  String _toDailyDate(DateTime acceptationTime) {
    return ValueConverters()
        .toDailyTimeStringFromDateTime(acceptationTime)
        .getOrElse(() => OrdersConstants.transactionNotAccepted);
  }
}
