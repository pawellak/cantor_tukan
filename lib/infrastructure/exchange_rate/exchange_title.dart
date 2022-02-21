import 'package:flutter/material.dart';

const flags = 'Flaga';
const currency = 'Waluta';
const customerSell = 'Sprzedaż';
const customerBuy = 'Zakup';

class ExchangeTitle {
  Expanded buildFlag() => const Expanded(child: Text(flags, textAlign: TextAlign.center));

  Expanded buildCurrency() => const Expanded(child: Text(currency, textAlign: TextAlign.center));

  Expanded buildCustomerSell() => const Expanded(child: Text(customerSell, textAlign: TextAlign.center));

  Expanded buildCustomerBuy() => const Expanded(child: Text(customerBuy, textAlign: TextAlign.center));
}
