import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/core/enums.dart';

import '../../../../domain/transaction/transaction.dart';
import '../../constants.dart';
import '../list_point/list_point.dart';

class TransactionSell {
  Widget call(Transaction userTransaction) {
    String currencyName = userTransaction.currency.getOrCrash().toShortString();

    double price = userTransaction.priceSell.getOrCrash();

    return ListPoint(title: OrdersConstants.priceSell, description: '${price.toString()} $currencyName');
  }
}
