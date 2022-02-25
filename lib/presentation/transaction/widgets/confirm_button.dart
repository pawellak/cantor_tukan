import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

import '../../../application/transaction/transaction_form/transaction_form_bloc.dart';

class ConfirmButton extends StatefulWidget {
  const ConfirmButton({Key? key}) : super(key: key);

  @override
  _ConfirmButtonState createState() => _ConfirmButtonState();
}

class _ConfirmButtonState extends State<ConfirmButton> {
  @override
  Widget build(BuildContext context) {
    return confirmButton(context);
  }
}

Padding confirmButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(Constants.smallPadding),
    child: Row(
      children: [
        Expanded(child: _button(context)),
      ],
    ),
  );
}

BlocBuilder _button(BuildContext context) {
  return BlocBuilder<TransactionFormBloc, TransactionFormState>(
    builder: (context, state) {
      bool isButtonLock = false;

      if (state.isSubmitting) {
        isButtonLock = true;
      }

      return ElevatedButton(
          style: _style(context),
          onPressed: isButtonLock
              ? null
              : () {
                  context.read<TransactionFormBloc>().add(const TransactionFormEvent.setBill());
                  context.read<TransactionFormBloc>().add(const TransactionFormEvent.setDate());
                  context.read<TransactionFormBloc>().add(const TransactionFormEvent.transactionConfirmed());
                },
          child: const Text(Constants.confirm));
    },
  );
}

ButtonStyle _style(BuildContext context) => ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor);
