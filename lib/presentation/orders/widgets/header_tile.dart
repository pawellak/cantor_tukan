import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/orders/constants.dart';

import '../../../domain/core/core_constants.dart';
import '../../../domain/transaction/transaction.dart';
import 'package:kantor_tukan/domain/core/enums.dart';

class HeaderTile extends StatelessWidget {
  final Transaction userTransaction;

  const HeaderTile({Key? key, required this.userTransaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildHeaderOfTitle(userTransaction);
  }
}

ListTile _buildHeaderOfTitle(Transaction userTransaction) {
  return ListTile(
    title: _buildHeaderDescription(userTransaction),
  );
}

Text _buildHeaderDescription(Transaction userTransaction) {
  String description = _getDescription(userTransaction);

  return Text(
    description,
    style: _getHeaderTextStyle(),
  );
}

TextStyle _getHeaderTextStyle() => const TextStyle(color: Colors.black, fontSize: OrdersConstants.headerSize);

String _getDescription(Transaction userTransaction) {
  String transactionType = _getCurrencyType(userTransaction);
  String currencyBill = _getCurrencyBill(userTransaction);
  String nameOfCurrency = _getNameOfCurrency(userTransaction);
  String description = '$transactionType $currencyBill $nameOfCurrency';
  return description;
}

String _getCurrencyBill(Transaction userTransaction) =>
    userTransaction.currencyValue.getOrCrash().toStringAsFixed(CoreConstants.valueDecimalPlaces);

String _getCurrencyType(Transaction userTransaction) {
  EnumTransactionType enumTransactionType = userTransaction.transactionType.getOrCrash();

  if (_isTransactionTypeBuy(enumTransactionType)) {
    return OrdersConstants.buy;
  } else {
    return OrdersConstants.sell;
  }
}

String _getNameOfCurrency(Transaction userTransaction) => userTransaction.currency.getOrCrash().toShortString();

bool _isTransactionTypeBuy(EnumTransactionType enumTransactionType) => enumTransactionType == EnumTransactionType.buy;
