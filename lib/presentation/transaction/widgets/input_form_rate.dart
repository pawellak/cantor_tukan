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
    final inputForm = BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: _buildInputFormBuilder,
    );

    return _decorate(inputForm);
  }

  Widget _buildInputFormBuilder(context, state) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Expanded(flex: TransactionConstants.flexTextInputCurrencyValue, child: _buildInputText(context)),
      Expanded(child: _buildCurrencyNameText(state)),
    ]);
  }

  Expanded _decorate(BlocBuilder inputForm) {
    return Expanded(flex: TransactionConstants.flexTextInput, child: inputForm);
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

  EdgeInsets _getPadding() => const EdgeInsets.only(left: TransactionConstants.padding, right: TransactionConstants.padding);

  _buildCurrencyNameText(TransactionFormState state) {
    String currency = state.transaction.currency.value.fold((l) => TransactionConstants.invalidValue, (r) => r.toShortString());
    return Padding(
      padding: const EdgeInsets.only(right: TransactionConstants.padding),
      child: FittedBox(child: Text(currency)),
    );
  }
}

InputDecoration _getDecorator(BuildContext context) {
  return InputDecoration(
    prefixIcon: Icon(
      Icons.account_balance_wallet_sharp,
      color: Theme.of(context).colorScheme.secondary,
    ),
    labelText: TransactionConstants.amountOfTransaction,
  );
}

void _onChanged(BuildContext context, String value) {
  value = _parseCommaToDot(value);
  var currencyValueFold = ValueConverters().toDoubleFromString(value);
  //zero double is return when somebody e.g paste non number text into number only input text
  double currencyValueDouble = currencyValueFold.fold((f) => TransactionConstants.zeroDouble, (r) => r);
  _setNewCurrencyValue(context, currencyValueDouble);
}

String _parseCommaToDot(String value) => value.replaceAll(RegExp(TransactionConstants.comma), TransactionConstants.dot);

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
    currencyValueTooBig: (_) => TransactionConstants.valueToBig,
    currencyValueTooSmall: (_) => TransactionConstants.valueToSmall,
    currencyValueNotInteger: (_) => TransactionConstants.valueNotInteger,
    orElse: () => _getCurrencyValueValid(),
  );
}

String? _getCurrencyValueValid() => null;
