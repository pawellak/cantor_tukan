import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(flex: Constants.currencyFlex, child: _inputText(context)),
            Expanded(child: _currency(state)),
          ],
        );
      },
    );
  }

  Padding _inputText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Constants.padding),
      child: TextFormField(
        decoration: _buildDecorator(context),
        autocorrect: false,
        keyboardType: TextInputType.number,
        onChanged: (value) => _onChanged(context, value),
        validator: (_) => _buildValidator(context),
      ),
    );
  }

  _currency(TransactionFormState state) {
    String currency = state.transaction.currency.value.fold((l) => Constants.invalidValue, (r) => r.toShortString());
    return Text(currency);
  }
}

InputDecoration _buildDecorator(BuildContext context) {
  return InputDecoration(
    prefixIcon: Icon(
      Icons.account_balance_wallet_sharp,
      color: Theme.of(context).colorScheme.secondary,
    ),
    labelText: Constants.amountOfTransaction,
  );
}

void _onChanged(BuildContext context, String value) {
  var currencyValueFold = ValueConverters().toDoubleFromString(value);
  double currencyValueDouble = currencyValueFold.fold((f) => Constants.zeroDouble, (r) => r);

  context
      .read<TransactionFormBloc>()
      .add(TransactionFormEvent.currencyValueChanged(CurrencyValue(currencyValueDouble)));
}

String? _buildValidator(BuildContext context) {
  return context.read<TransactionFormBloc>().state.transaction.currencyValue.value.fold(
        (f) => _buildEmailNotValid(f),
        (_) => _buildEmailValid(),
      );
}

String? _buildEmailNotValid(ValueFailure<double> f) {
  return f.maybeMap(
    currencyValueTooBig: (_) => Constants.valueToBig,
    currencyValueTooSmall: (_) => Constants.valueToSmall,
    orElse: () => _buildEmailValid(),
  );
}

String? _buildEmailValid() => null;
