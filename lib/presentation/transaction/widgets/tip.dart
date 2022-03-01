import 'package:flutter/material.dart';

import '../constants.dart';

class Tip extends StatelessWidget {
  final double heightOfWidget;
  const Tip(this.heightOfWidget,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightOfWidget,
      child:  Padding(
        padding: const EdgeInsets.all(Constants.padding),
        child: _buildTipText(),
      ),
    );
  }

  FittedBox _buildTipText() => const FittedBox(child: (Text(Constants.tip)));
}
