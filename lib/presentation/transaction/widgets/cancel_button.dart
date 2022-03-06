import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/internet/internet_bloc.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

import '../../splash/splash_page.dart';

class CancelButton extends StatefulWidget {
  const CancelButton({Key? key}) : super(key: key);

  @override
  _CancelButtonState createState() => _CancelButtonState();
}

class _CancelButtonState extends State<CancelButton> {
  @override
  Widget build(BuildContext context) {
    return _buildButton(context);
  }
}

ElevatedButton _buildButton(BuildContext context) {
  return ElevatedButton(
      style: _style(context),
      onPressed: () {
        _navigateToSplashScreen(context);
      },
      child: const Text(Constants.cancel));
}

void _navigateToSplashScreen(BuildContext context) {
  Navigator.of(context).pushNamedAndRemoveUntil(SplashPage.routeName, (route) => route.isFirst);
}

ButtonStyle _style(BuildContext context) => ElevatedButton.styleFrom(primary: Theme.of(context).colorScheme.onError);
