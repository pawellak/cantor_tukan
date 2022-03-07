import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/core/enums.dart';

import '../../../../domain/transaction/transaction.dart';
import '../../constants.dart';
import '../list_point/list_point.dart';

class TransactionBuy {
  Widget call(Transaction userTransaction) {
    String currencyName = userTransaction.currency.getOrCrash().toShortString();
    double price = userTransaction.priceBuy.getOrCrash();

    return ListPoint(title: OrdersConstants.priceBuy, description: '${price.toString()} $currencyName');
  }
}
