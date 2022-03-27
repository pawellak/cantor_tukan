import 'package:flutter/material.dart';

import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';

import 'package:kantor_tukan/presentation/transaction/widgets/calculation.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/cancel_accept_buttons.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/input_form_rate.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/logo.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/radio_buttons.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/submitting.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/timer.dart';
import '../../../application/transaction/transaction_form/transaction_form_bloc.dart';

class TransactionBuilder {
  late final TransactionFormState state;
  late final BuildContext context;

  TransactionBuilder({required this.context, required this.state});

  Widget call() {
    return Form(
      autovalidateMode: _isShowErrorMessageOn(state),
      child: Column(
        children: const [
          TransactionTimer(),
          Logo(),
          RadioButtons(),
          InputFormRate(),
          Calculation(),
          CancelAcceptButtons(),
          Submitting(),
        ],
      ),
    );
  }

  AutovalidateMode _isShowErrorMessageOn(TransactionFormState state) {
    return state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled;
  }
}
