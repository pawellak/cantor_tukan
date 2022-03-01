import 'package:flutter/material.dart';

import '../../../infrastructure/exchange_rate/links.dart';

class Logo extends StatelessWidget {
  final double heightOfWidget;

  const Logo(this.heightOfWidget,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightOfWidget,
      child: _buildLogo(),
    );
  }

  Image _buildLogo() {
    return Image.asset(
      Links.logoExchange,
    );
  }
}
