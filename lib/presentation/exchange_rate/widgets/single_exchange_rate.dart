import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/infrastructure/exchange_rate/links.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/presentation/exchange_rate/constants.dart';

class SingleExchangeRate extends StatelessWidget {
  final int ordinalNumber;
  final MainAxisAlignment mainAxisAlignment;
  final ExchangeRate exchangeRate;

  const SingleExchangeRate({
    Key? key,
    required this.exchangeRate,
    required this.ordinalNumber,
    required this.mainAxisAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildCurrencyTile(context);
  }

  GestureDetector _buildCurrencyTile(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ///TODO on tap handling
      },
      child: _buildRowWithCurrencyData(context),
    );
  }

  Container _buildRowWithCurrencyData(BuildContext context) {
    return Container(
      child: _buildTileRow(),
    );
  }

  Row _buildTileRow() {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [_buildFlag(), _buildNameOfCurrency(), _buildBuyPrice(), _buildSellPrice()],
    );
  }

  Expanded _buildFlag() {
    final String nameOfCurrency = exchangeRate.currency.getOrCrash().toShortString();
    return Expanded(
        child: Image.asset(
      '${Links.flagsPath}$nameOfCurrency${Links.flagsExtension}',
      height: Constants.heightOfFlag,
    ));
  }

  Expanded _buildNameOfCurrency() {
    final String nameOfCurrency = exchangeRate.currency.getOrCrash().toShortString();
    return Expanded(child: Text(nameOfCurrency, textAlign: TextAlign.center));
  }

  Expanded _buildBuyPrice() {
    final String buyPrice = exchangeRate.priceBuy.getOrCrash().toString();
    return Expanded(child: Text(buyPrice, textAlign: TextAlign.center));
  }

  Expanded _buildSellPrice() {
    final String sellPrice = exchangeRate.priceSell.getOrCrash().toString();
    return Expanded(child: Text(sellPrice, textAlign: TextAlign.center));
  }
}
