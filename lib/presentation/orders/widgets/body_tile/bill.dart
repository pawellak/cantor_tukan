import 'package:flutter/material.dart';

import '../../../../domain/core/core_constants.dart';
import '../../../../domain/transaction/transaction.dart';
import '../../constants.dart';
import '../list_point/list_point.dart';

class TransactionBill {
  Widget call(final Transaction userTransaction) {
    String currencyName = CoreConstants.pln;

    String currencyBill = userTransaction.currencyBill.getOrCrash().toStringAsFixed(CoreConstants.valueDecimalPlaces);
    return ListPoint(title: OrdersConstants.currencyBill, description: '$currencyBill $currencyName');
  }
}
