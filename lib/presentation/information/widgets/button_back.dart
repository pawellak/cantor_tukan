import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';
import '../constants.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final button = _buildButton(context);
    return _decorator(button);
  }

  Padding _decorator(ElevatedButton button) {
    return Padding(
      padding: const EdgeInsets.all(InformationConstants.padding),
      child: Row(
        children: [Expanded(child: button)],
      ),
    );
  }

  ElevatedButton _buildButton(BuildContext context) {
    return ElevatedButton(
      style: _buildButtonStyle(context),
      onPressed: () {
        _onBackPressed(context);
      },
      child: _buildButtonDescription(),
    );
  }

  ButtonStyle _buildButtonStyle(BuildContext context) =>
      ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor);

  void _onBackPressed(BuildContext context) {
    Navigator.of(context).popAndPushNamed(ExchangeRatePage.routeName);
  }

  Text _buildButtonDescription() => const Text(InformationConstants.backButtonDescription);
}
