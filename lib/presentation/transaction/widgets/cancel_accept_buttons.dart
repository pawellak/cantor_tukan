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
      children: [_buildDecoratedCancelBottom(), _buildDecoratedConfirmButton()],
    );
  }

  Expanded _buildDecoratedCancelBottom() {
    return  Expanded(child: Padding(
      padding: _getCancelPadding(),
      child: const CancelButton(),
    ));
  }

  EdgeInsets _getCancelPadding() => const EdgeInsets.only(left: Constants.padding, right: Constants.smallPadding);
  EdgeInsets _getAcceptPadding() => const EdgeInsets.only(left: Constants.smallPadding, right: Constants.padding);

  Expanded _buildDecoratedConfirmButton() {
    return Expanded(
        child: Padding(
      padding: _getAcceptPadding(),
      child: const ConfirmButton(),
    ));
  }
}
