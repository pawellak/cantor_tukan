import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

class Calculation extends StatelessWidget {
  final double heightOfWidget;

  const Calculation(this.heightOfWidget, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: (context, state) {
        return _calculation(state, heightOfWidget);
      },
    );
  }
}

SizedBox _calculation(TransactionFormState state, double heightOfWidget) {
  final transactionType = state.transaction.transactionType.getOrCrash();
  bool isTypeBuy = false;
  double rate;
  double currencyValue;
  String result;

  currencyValue = state.transaction.currencyValue.value.fold((l) => Constants.zeroDouble, (r) => r);

  if (isTransactionTypeBuy(transactionType)) {
    isTypeBuy = true;
  }

  if (isTypeBuy) {
    rate = state.transaction.priceBuy.value.fold((l) => Constants.zeroDouble, (r) => r);
  } else {
    rate = state.transaction.priceSell.value.fold((l) => Constants.zeroDouble, (r) => r);
  }

  if (currencyValue == Constants.zeroDouble) {
    result = Constants.invalidValue;
  } else {
    result = (rate * currencyValue).toString();
  }

  return SizedBox(
    height: heightOfWidget,
    child: Padding(
      padding: const EdgeInsets.all(Constants.smallPadding),
      child: FittedBox(
        child: Text(result),
      ),
    ),
  );
}

bool isTransactionTypeBuy(EnumTransactionType transactionType) => transactionType == EnumTransactionType.buy;
