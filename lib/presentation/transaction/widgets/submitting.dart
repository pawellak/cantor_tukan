import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

class Submitting extends StatelessWidget {
  const Submitting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: (context, state) {
        if (stateIsSubmitting(state)) {
          return const LinearProgressIndicator();
        } else {
          return const SizedBox(height: Constants.tenPixel);
        }
      },
    );
  }

  bool stateIsSubmitting(TransactionFormState state) => state.isSubmitting == true;
}
