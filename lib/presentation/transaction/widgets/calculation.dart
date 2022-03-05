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

    String resultWithDescription = '${Constants.forWord} $result ${Constants.plnCurrency}';
    return SizedBox(
        height: heightOfWidget,
        child: Padding(
          padding: _getSmallPadding(),
          child: FittedBox(
            child: _buildTextDescription(resultWithDescription),
          ),
        ));
  }

  EdgeInsets _getSmallPadding() => const EdgeInsets.all(Constants.smallPadding);

  Text _buildTextDescription(String result) => Text(result);
}
