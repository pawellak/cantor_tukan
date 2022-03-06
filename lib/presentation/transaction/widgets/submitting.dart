import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

class Submitting extends StatelessWidget {
  const Submitting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: _getBuilder,
    );
  }

  Widget _getBuilder(context, state) {
    if (isStateSubmitting(state)) {
      return _buildLoadingState();
    } else {
      return _buildReadyState();
    }
  }

  bool isStateSubmitting(TransactionFormState state) => state.isSubmitting == true;

  Padding _buildLoadingState() {
    return const Padding(
      padding: EdgeInsets.all(Constants.padding),
      child: LinearProgressIndicator(),
    );
  }

  SizedBox _buildReadyState() {
    return const SizedBox(height: Constants.tenPixel);
  }
}
