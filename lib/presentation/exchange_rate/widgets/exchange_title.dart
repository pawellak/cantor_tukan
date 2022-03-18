import 'package:flutter/material.dart';

import '../constants.dart';

class ExchangeTitle {
  Expanded buildFlag() => _decorateText(ExchangeRateConstants.flag);

  Expanded buildCurrency() => _decorateText(ExchangeRateConstants.currency);

  Expanded buildCustomerSell() => _decorateText(ExchangeRateConstants.customerSell);

  Expanded buildCustomerBuy() => _decorateText(ExchangeRateConstants.customerBuy);

  Expanded _decorateText(String text) {
    return Expanded(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: ExchangeRateConstants.titleNameFontSize),
        ),
      ),
    );
  }
}
