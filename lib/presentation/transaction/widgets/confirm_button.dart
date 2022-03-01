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
    return _confirmButton(context);
  }
}

Padding _confirmButton(BuildContext context) {
  return Padding(
    padding: _getSmallPadding(),
    child: Row(
      children: [
        _buildButton(context)
      ],
    ),
  );
}

EdgeInsets _getSmallPadding() => const EdgeInsets.all(Constants.smallPadding);

Expanded _buildButton(BuildContext context) {
  return const Expanded(
    child: BlocBuilder<TransactionFormBloc, TransactionFormState>(
      builder: _getBuilder,
    ),
  );
}

Widget _getBuilder(BuildContext context, TransactionFormState state) {
  bool isButtonLock = _getButtonState(state);

  return ElevatedButton(
      style: _style(context),
      onPressed: isButtonLock
          ? _buildLockButton()
          : () {
              _buildActiveButton(context);
            },
      child: const Text(Constants.confirm));
}

bool _getButtonState(TransactionFormState state) {
  bool isButtonLock = false;

  if (state.isSubmitting) {
    isButtonLock = true;
  }
  return isButtonLock;
}

Null _buildLockButton() => null;

void _buildActiveButton(BuildContext context) {
  context.read<TransactionFormBloc>().add(const TransactionFormEvent.setBill());
  context.read<TransactionFormBloc>().add(const TransactionFormEvent.setDate());
  context.read<TransactionFormBloc>().add(const TransactionFormEvent.transactionConfirmed());
}

ButtonStyle _style(BuildContext context) => ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor);
