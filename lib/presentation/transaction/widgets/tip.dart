import 'package:flutter/material.dart';

import '../constants.dart';

class Tip extends StatelessWidget {
  final double heightOfWidget;
  const Tip(this.heightOfWidget,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightOfWidget,
      child: const Padding(
        padding: EdgeInsets.all(Constants.padding),
        child: FittedBox(child: (Text(Constants.tip))),
      ),
    );
  }
}
