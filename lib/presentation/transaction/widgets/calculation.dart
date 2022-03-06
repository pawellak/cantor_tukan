import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

import '../../../application/transaction/transaction_form/calculations.dart';

class Calculation extends StatelessWidget {
  final double heightOfWidget;

  const Calculation(this.heightOfWidget, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: _getBuilder,
    );
  }

  Widget _getBuilder(context, state) {
    String result = Calculations(state).result;
    if (result == Constants.invalidValue) {
      result = Constants.currencyNotSet;
    } else {
      result = _decorateResult(result);
    }

    return SizedBox(
        height: heightOfWidget,
        child: Padding(
          padding: _getPadding(),
          child: FittedBox(
            child: _buildTextDescription(result),
          ),
        ));
  }

  String _decorateResult(String result) => '${Constants.forWord} $result ${Constants.plnCurrency}';

  EdgeInsets _getPadding() => const EdgeInsets.only(left: Constants.padding, right: Constants.padding);

  Text _buildTextDescription(String result) => Text(result);
}
