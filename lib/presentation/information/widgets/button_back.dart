import 'package:flutter/material.dart';

import '../../splash/splash_page.dart';
import '../constants.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Constants.padding),
      child: Row(
        children: [_buildButton(context)],
      ),
    );
  }

  Expanded _buildButton(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: _buildButtonStyle(context),
        onPressed: () {
          _onBackPressed(context);
        },
        child: _buildButtonDescription(),
      ),
    );
  }

  ButtonStyle _buildButtonStyle(BuildContext context) =>
      ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor);

  void _onBackPressed(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(SplashPage.routeName, (route) => route.isFirst);
  }

  Text _buildButtonDescription() => const Text(Constants.backButtonDescription);
}
