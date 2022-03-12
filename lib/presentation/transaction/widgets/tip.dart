import 'package:flutter/material.dart';

import '../constants.dart';

class Tip extends StatelessWidget {
  const Tip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = _buildTipText();
    return _decorate(text);
  }

  Expanded _decorate(FittedBox text) {
    return Expanded(
      flex: TransactionConstants.flexTip,
      child: Padding(
        padding: const EdgeInsets.only(top: TransactionConstants.microPadding),
        child: text,
      ),
    );
  }

  FittedBox _buildTipText() => const FittedBox(child: (Text(TransactionConstants.tip)));
}
