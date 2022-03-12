import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/cancel_button.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/confirm_button.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

class CancelAcceptButtons extends StatelessWidget {
  const CancelAcceptButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: TransactionConstants.flexDecisionButton,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [_buildDecoratedCancelBottom(), _buildDecoratedConfirmButton()],
      ),
    );
  }

  Expanded _buildDecoratedCancelBottom() {
    return  Expanded(child: Padding(
      padding: _getCancelPadding(),
      child: const CancelButton(),
    ));
  }

  EdgeInsets _getCancelPadding() => const EdgeInsets.only(left: TransactionConstants.padding, right: TransactionConstants.smallPadding);
  EdgeInsets _getAcceptPadding() => const EdgeInsets.only(left: TransactionConstants.smallPadding, right: TransactionConstants.padding);

  Expanded _buildDecoratedConfirmButton() {
    return Expanded(
        child: Padding(
      padding: _getAcceptPadding(),
      child: const ConfirmButton(),
    ));
  }
}
