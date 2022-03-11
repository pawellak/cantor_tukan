import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/exchange_form/exchange_rate_bloc.dart';
import '../../../application/transaction/transaction_form/transaction_form_bloc.dart';
import '../../transaction/transaction_page.dart';

class ExchangeRateSuccess
{
  void call(ExchangeRateState state, BuildContext context) {
    if (state.isExchangeRateSelected) {
      _setTransactionExchangeRate(context, state);
      _navigateToTransactionPage(context);
    }
  }

  void _setTransactionExchangeRate(BuildContext context, ExchangeRateState state) {
    context.read<TransactionFormBloc>().add(
      TransactionFormEvent.exchangeRateSelected(state.exchangeRateSelected),
    );
  }

  void _navigateToTransactionPage(BuildContext context) {
    Navigator.of(context).popAndPushNamed(TransactionPage.routeName);
  }
}