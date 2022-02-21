import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/single_exchange_rate.dart';

class ListTable extends StatelessWidget {
  final List<ExchangeRate> items;

  const ListTable({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _heightOfScreen = MediaQuery.of(context).size.height;
    return ListView.builder(
      itemCount: _getItemsLength(),
      itemBuilder: (_, index) {
        ExchangeRate singleCurrency = _getSingleCurrency(index);
        return _buildSingleCurrencyRow(index, singleCurrency, _heightOfScreen);
      },
    );
  }

  int _getItemsLength() => items.length;

  _buildSingleCurrencyRow(int index, ExchangeRate singleCurrency, double _heightOfScreen) {
    return SingleExchangeRate(
      mainAxisAlignment: MainAxisAlignment.center,
      ordinalNumber: index,
      exchangeRate: singleCurrency,
    );
  }

  ExchangeRate _getSingleCurrency(int index) => items[index];
}
