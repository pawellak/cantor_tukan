import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/cancel_button.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/confirm_button.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

class CancelAcceptButtons extends StatelessWidget {
  const CancelAcceptButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [_buildDecoratedCancelBotton(), _buildDecoratedConfirmButton()],
    );
  }

  Expanded _buildDecoratedCancelBotton() {
    return Expanded(
        child: Padding(
      padding: _getPadding(),
      child: const CancelButton(),
    ));
  }

  EdgeInsets _getPadding() => const EdgeInsets.all(Constants.padding);

  Expanded _buildDecoratedConfirmButton() {
    return Expanded(
        child: Padding(
      padding: _getPadding(),
      child: const ConfirmButton(),
    ));
  }
}
