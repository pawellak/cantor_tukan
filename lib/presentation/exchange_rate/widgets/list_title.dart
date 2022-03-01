import 'package:flutter/material.dart';

import 'exchange_title.dart';

class ListTitle extends StatelessWidget {
  const ListTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ExchangeTitle().buildFlag(),
        ExchangeTitle().buildCurrency(),
        ExchangeTitle().buildCustomerSell(),
        ExchangeTitle().buildCustomerBuy(),
      ],
    );
  }
}
