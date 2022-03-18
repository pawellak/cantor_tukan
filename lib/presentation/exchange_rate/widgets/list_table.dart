import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/single_exchange_rate.dart';
import 'package:kt_dart/collection.dart';
import 'package:kantor_tukan/presentation/exchange_rate/constants.dart';

class ListTable extends StatelessWidget {
  final KtList<ExchangeRate> items;

  const ListTable({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _heightOfScreen = _getHeightOfScreen(context);
    return ListView.builder(
      itemCount: _getItemsLength(),
      itemBuilder: (_, index) {
        return _buildSingleCurrency(index, _heightOfScreen);
      },
    );
  }

  double _getHeightOfScreen(BuildContext context) => MediaQuery.of(context).size.height;

  _buildSingleCurrency(int index, double _heightOfScreen) {
    ExchangeRate singleCurrency = _getSingleCurrencyByIndex(index);
    return _buildSingleCurrencyRow(index, singleCurrency, _heightOfScreen);
  }

  ExchangeRate _getSingleCurrencyByIndex(int index) => items[index];

  int _getItemsLength() => items.size;

  _buildSingleCurrencyRow(int index, ExchangeRate exchangeRate, double _heightOfScreen) {
    if (_isSingleCurrencyFailure(exchangeRate)) return _buildInvalidCurrency();
    return SizedBox(
      height: _getWidgetHeight(_heightOfScreen),
      child: _buildSingleExchangeRate(index, exchangeRate),
    );
  }

  double _getWidgetHeight(double _heightOfScreen) => _heightOfScreen / ExchangeRateConstants.divisorOfTileRow;

  SingleExchangeRate _buildSingleExchangeRate(int index, ExchangeRate exchangeRate) {
    return SingleExchangeRate(
      mainAxisAlignment: MainAxisAlignment.center,
      ordinalNumber: index,
      exchangeRate: exchangeRate,
    );
  }

  bool _isSingleCurrencyFailure(ExchangeRate exchangeRate) => exchangeRate.failureOption.isSome();

  Center _buildInvalidCurrency() => const Center(child: Text(ExchangeRateConstants.invalidCurrency));
}
