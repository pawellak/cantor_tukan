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
      builder: _getBuilder,
    );
  }

  Widget _getBuilder(BuildContext context, TransactionFormState state) {
    final isBuyActive = _getActiveTransactionType(state);

    return Padding(
      padding: const EdgeInsets.all(Constants.padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _buildButtons(isBuyActive, context),
      ),
    );
  }

  bool _getActiveTransactionType(TransactionFormState state) {
    bool isBuyActive = false;
    final activeTransactionType = state.transaction.transactionType.getOrCrash();

    if (activeTransactionType == EnumTransactionType.buy) {
      isBuyActive = true;
    }
    return isBuyActive;
  }

  List<Widget> _buildButtons(bool isBuyActive, BuildContext context) {
    return [
      _buyButton(isBuyActive, context),
      const SizedBox(width: Constants.tenPixel),
      _sellButton(isBuyActive, context),
    ];
  }

  Expanded _buyButton(bool isBuyActive, BuildContext context) {
    final activeColor = _getActiveColor(context);
    final inactiveColor = _getInactiveColor(context);

    return Expanded(
        child: OutlinedButton(
            style: _getButtonStyle(isBuyActive, activeColor, inactiveColor),
            onPressed: () {
              _setEnumTransactionTypeToBuy(context);
            },
            child: const Text(Constants.buy)));
  }

  void _setEnumTransactionTypeToBuy(BuildContext context) {
    context
        .read<TransactionFormBloc>()
        .add(TransactionFormEvent.transactionTypeSelected(TransactionType.fromEnum(EnumTransactionType.buy)));
  }

  Expanded _sellButton(bool isBuyActive, BuildContext context) {
    final activeColor = _getActiveColor(context);
    final inactiveColor = _getInactiveColor(context);
    return Expanded(
        child: OutlinedButton(
            style: _getButtonStyle(isBuyActive, inactiveColor, activeColor),
            onPressed: () {
              _setEnumTransactionTypeToSell(context);
            },
            child: const Text(Constants.sell)));
  }

  void _setEnumTransactionTypeToSell(BuildContext context) {
    context
        .read<TransactionFormBloc>()
        .add(TransactionFormEvent.transactionTypeSelected(TransactionType.fromEnum(EnumTransactionType.sell)));
  }

  ButtonStyle _getButtonStyle(bool isBuyActive, Color activeColor, Color inactiveColor) =>
      OutlinedButton.styleFrom(backgroundColor: isBuyActive ? activeColor : inactiveColor);

  Color _getInactiveColor(BuildContext context) {
    final inactiveColor = Theme.of(context).colorScheme.surface;
    return inactiveColor;
  }

  Color _getActiveColor(BuildContext context) {
    final activeColor = Theme.of(context).primaryColor;
    return activeColor;
  }
}
