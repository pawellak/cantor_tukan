// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/register/register_page.dart';
import 'package:kantor_tukan/presentation/sign_in/constants.dart';

class ButtonRegisterEmail extends StatelessWidget {
  const ButtonRegisterEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: () => _onRegisterPressed(context), child: _buildTextDescription());
  }

  void _onRegisterPressed(BuildContext context) {
    Navigator.of(context).popAndPushNamed(RegisterPage.routeName);
  }

  Text _buildTextDescription() => const Text(SignInConstants.register);
}
