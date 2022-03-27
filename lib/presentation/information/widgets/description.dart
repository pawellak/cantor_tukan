import 'package:flutter/material.dart';

import '../constants.dart';

class Description extends StatelessWidget {
  final String description;

  const Description({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: _textStyle(),
    );
  }

  TextStyle _textStyle() => const TextStyle(fontSize: InformationConstants.sizeOfText);
}
