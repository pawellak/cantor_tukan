import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/transaction/transaction_form/transaction_form_bloc.dart';
import 'builder.dart';
import 'listener.dart';

class TransactionBody extends StatelessWidget {
  const TransactionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getBody(context);
  }

  BlocConsumer _getBody(BuildContext context) {
    return BlocConsumer<TransactionFormBloc, TransactionFormState>(
      listener: (context, state) {
        TransactionListener(context: context, state: state).call();
      },
      builder: (context, state) {
        return TransactionBuilder(context: context, state: state).call();
      },
    );
  }
}
