import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

class Submitting extends StatelessWidget {
  const Submitting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final submitting = BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: _getSubmittingBuilder,
    );

    return _decorate(submitting);
  }

  Widget _getSubmittingBuilder(context, state) {
    if (isStateSubmitting(state)) {
      return _buildLoadingState();
    } else {
      return _buildReadyState();
    }
  }

  Expanded _decorate(BlocBuilder submitting) {
    return Expanded(flex: TransactionConstants.flexSubmitting, child: Container(child: submitting,color: Colors.red,));
  }

  bool isStateSubmitting(TransactionFormState state) => state.isSubmitting == true;

  Padding _buildLoadingState() {
    return const Padding(
      padding: EdgeInsets.all(TransactionConstants.padding),
      child: LinearProgressIndicator(),
    );
  }

  SizedBox _buildReadyState() {
    return const SizedBox(height: TransactionConstants.tenPixel);
  }
}
