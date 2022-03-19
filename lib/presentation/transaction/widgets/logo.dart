import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

import '../../../infrastructure/exchange_rate/links.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logo = _buildLogo();
    return _decorator(logo);
  }

  Expanded _decorator(Image image) {
    return Expanded(flex: TransactionConstants.flexLogo, child: Padding(
      padding: const EdgeInsets.all(TransactionConstants.logoPadding),
      child: image,
    ));
  }

  Image _buildLogo() {
    return Image.asset(
      Links.logoExchange,
    );
  }
}
