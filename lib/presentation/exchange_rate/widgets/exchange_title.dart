import 'package:flutter/material.dart';

import '../constants.dart';



class ExchangeTitle {
  Expanded buildFlag() => const Expanded(child: Text(Constants.flag, textAlign: TextAlign.center));

  Expanded buildCurrency() => const Expanded(child: Text(Constants.currency, textAlign: TextAlign.center));

  Expanded buildCustomerSell() => const Expanded(child: Text(Constants.customerSell, textAlign: TextAlign.center));

  Expanded buildCustomerBuy() => const Expanded(child: Text(Constants.customerBuy, textAlign: TextAlign.center));
}
