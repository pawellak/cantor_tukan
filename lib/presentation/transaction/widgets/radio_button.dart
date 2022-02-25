import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/domain/core/currency_value.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

class RadioButton extends StatelessWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: (context, state) {
        return _buildRadioButton(context, state);
      },
    );
  }

  Padding _buildRadioButton(BuildContext context, TransactionFormState state) {
    bool isBuyActive = _getActiveTransactionType(state);

    final activeColor = Theme.of(context).primaryColor;
    final inactiveColor = Theme.of(context).colorScheme.surface;

    return Padding(
      padding: const EdgeInsets.all(Constants.padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buyButton(isBuyActive, activeColor, inactiveColor, context),
          const SizedBox(width: 10),
          _sellButton(isBuyActive, inactiveColor, activeColor, context),
        ],
      ),
    );
  }

  Expanded _sellButton(bool isBuyActive, Color inactiveColor, Color activeColor, BuildContext context) {
    return Expanded(
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: isBuyActive ? inactiveColor : activeColor),
            onPressed: () {
              context.read<TransactionFormBloc>().add(
                  TransactionFormEvent.transactionTypeSelected(TransactionType.fromEnum(EnumTransactionType.sell)));
            },
            child: const Text(Constants.sell)));
  }

  Expanded _buyButton(bool isBuyActive, Color activeColor, Color inactiveColor, BuildContext context) {
    return Expanded(
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: isBuyActive ? activeColor : inactiveColor),
            onPressed: () {
              context
                  .read<TransactionFormBloc>()
                  .add(TransactionFormEvent.transactionTypeSelected(TransactionType.fromEnum(EnumTransactionType.buy)));
            },
            child: const Text(Constants.buy)));
  }

  bool _getActiveTransactionType(TransactionFormState state) {
    bool isBuyActive = false;
    final activeTransactionType = state.transaction.transactionType.getOrCrash();

    if (activeTransactionType == EnumTransactionType.buy) {
      isBuyActive = true;
    }
    return isBuyActive;
  }
}
