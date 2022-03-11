import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

import '../../../application/transaction/transaction_form/calculations.dart';

class Calculation extends StatelessWidget {
  const Calculation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calculation = BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: _getBuilder,
    );

    return _decorate(calculation);
  }

  Widget _getBuilder(context, state) {
    String result = Calculations(state).result;
    if (result == Constants.invalidValue) {
      result = Constants.currencyNotSet;
    } else {
      result = _decorateResult(result);
    }

    return FittedBox(
      child: _buildTextDescription(result),
    );
  }

  Expanded _decorate(BlocBuilder calculation) {
    return Expanded(
        flex: Constants.flexCalculation,
        child: Padding(
          padding: _getPadding(),
          child: calculation,
        ));
  }

  String _decorateResult(String result) => '${Constants.forWord} $result ${Constants.plnCurrency}';

  EdgeInsets _getPadding() => const EdgeInsets.only(left: Constants.padding, right: Constants.padding);

  Text _buildTextDescription(String result) => Text(result);
}
