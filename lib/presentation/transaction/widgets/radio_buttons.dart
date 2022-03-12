import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/domain/core/currency_value.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

class RadioButtons extends StatelessWidget {
  const RadioButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttons = BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: _getButtonsBuilder,
    );

    return _decorate(buttons);
  }

  Widget _getButtonsBuilder(BuildContext context, TransactionFormState state) {
    final isBuyActive = _getActiveTransactionType(state);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: _buildButtons(isBuyActive, context),
    );
  }

  Expanded _decorate(BlocBuilder buttons) {
    return Expanded(
      flex: TransactionConstants.flexRadioButtons,
      child: Padding(
          padding: const EdgeInsets.only(left: TransactionConstants.smallPadding, right: TransactionConstants.smallPadding), child: buttons),
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
      const SizedBox(width: TransactionConstants.tenPixel),
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
            child: const FittedBox(child: Text(TransactionConstants.buy))));
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
            child: const Text(TransactionConstants.sell)));
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
