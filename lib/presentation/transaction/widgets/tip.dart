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
      flex: Constants.flexTip,
      child: Padding(
        padding: const EdgeInsets.only(top: Constants.microPadding),
        child: text,
      ),
    );
  }

  FittedBox _buildTipText() => const FittedBox(child: (Text(Constants.tip)));
}
