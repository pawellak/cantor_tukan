import 'package:flutter/material.dart';

import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';

import 'package:kantor_tukan/presentation/transaction/widgets/calculation.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/cancel_accept_buttons.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/input_form_rate.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/logo.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/radio_button.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/submitting.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/timer.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/tip.dart';
import '../../../application/transaction/transaction_form/size_widget.dart';
import '../../../application/transaction/transaction_form/transaction_form_bloc.dart';

class TransactionBuilder {
  late final TransactionFormState state;
  late final BuildContext context;

  TransactionBuilder({required this.context, required this.state});

  Widget call() {
    double pageHeight = _getHeightOfScreen(context);
    return Form(
      autovalidateMode: _isShowErrorMessageOn(state),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const TransactionTimer(),
          Logo(SizeWidget(pageHeight).logoHeight()),
          Tip(SizeWidget(pageHeight).tipHeight()),
          const RadioButton(),
          const InputFormRate(),
          Calculation(SizeWidget(pageHeight).calculationHeight()),
          const CancelAcceptButtons(),
          const Submitting(),
        ],
      ),
    );
  }

  double _getHeightOfScreen(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  AutovalidateMode _isShowErrorMessageOn(TransactionFormState state) {
    return state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled;
  }
}
