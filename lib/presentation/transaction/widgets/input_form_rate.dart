import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/domain/core/core_constants.dart';
import 'package:kantor_tukan/domain/core/currency_value.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:kantor_tukan/domain/core/value_converters.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';
import 'package:kantor_tukan/domain/core/enums.dart';

import '../../../application/transaction/transaction_form/transaction_form_bloc.dart';

class InputFormRate extends StatelessWidget {
  const InputFormRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: _buildBuilder,
    );
  }

  Widget _buildBuilder(context, state) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Expanded(flex: Constants.currencyFlex, child: _buildInputText(context)),
      Expanded(child: _buildCurrencyNameText(state)),
    ]);
  }

  Padding _buildInputText(BuildContext context) {
    return Padding(
      padding: _getPadding(),
      child: TextFormField(
        maxLength: CoreConstants.maxNumberCurrency,
        decoration: _getDecorator(context),
        autocorrect: false,
        keyboardType: TextInputType.number,
        onChanged: (value) => _onChanged(context, value),
        validator: (_) => _getValidator(context),
      ),
    );
  }

  EdgeInsets _getPadding() => const EdgeInsets.all(Constants.padding);

  _buildCurrencyNameText(TransactionFormState state) {
    String currency = state.transaction.currency.value.fold((l) => Constants.invalidValue, (r) => r.toShortString());
    return Text(currency);
  }
}

InputDecoration _getDecorator(BuildContext context) {
  return InputDecoration(
    prefixIcon: Icon(
      Icons.account_balance_wallet_sharp,
      color: Theme.of(context).colorScheme.secondary,
    ),
    labelText: Constants.amountOfTransaction,
  );
}

void _onChanged(BuildContext context, String value) {
  value = _parseCommaToDot(value);
  var currencyValueFold = ValueConverters().toDoubleFromString(value);
  //zero double is return when somebody e.g paste non number text into number only input text
  double currencyValueDouble = currencyValueFold.fold((f) => Constants.zeroDouble, (r) => r);
  _setNewCurrencyValue(context, currencyValueDouble);
}

String _parseCommaToDot(String value) => value.replaceAll(RegExp(Constants.comma), Constants.dot);

void _setNewCurrencyValue(BuildContext context, double currencyValueDouble) {
  context
      .read<TransactionFormBloc>()
      .add(TransactionFormEvent.currencyValueChanged(CurrencyValue(currencyValueDouble)));
}

String? _getValidator(BuildContext context) {
  return context.read<TransactionFormBloc>().state.transaction.currencyValue.value.fold(
        (failure) => _getCurrencyValueNotValid(failure),
        (_) => _getCurrencyValueValid(),
      );
}

String? _getCurrencyValueNotValid(ValueFailure<double> failure) {
  return failure.maybeMap(
    currencyValueTooBig: (_) => Constants.valueToBig,
    currencyValueTooSmall: (_) => Constants.valueToSmall,
    currencyValueNotInteger: (_) => Constants.valueNotInteger,
    orElse: () => _getCurrencyValueValid(),
  );
}

String? _getCurrencyValueValid() => null;
