import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/single_exchange_rate.dart';
import 'package:kt_dart/collection.dart';

class ListTable extends StatelessWidget {
  final KtList<ExchangeRate> items;

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

  int _getItemsLength() => items.size;

  _buildSingleCurrencyRow(int index, ExchangeRate exchangeRate, double _heightOfScreen) {
    if(exchangeRate.failureOption.isSome()) return const Center(child: Text('waluta nieobsługiwana'));
    return SizedBox(
      height: _heightOfScreen/10,
      child: SingleExchangeRate(
        mainAxisAlignment: MainAxisAlignment.center,
        ordinalNumber: index,
        exchangeRate: exchangeRate,
      ),
    );
  }

  ExchangeRate _getSingleCurrency(int index) => items[index];
}
