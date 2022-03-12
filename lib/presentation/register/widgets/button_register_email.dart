// ignore_for_file: implementation_imports
import 'package:flutter/material.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kantor_tukan/presentation/register/constants.dart';
import 'package:provider/src/provider.dart';

class ButtonRegisterEmail extends StatelessWidget {
  const ButtonRegisterEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: () => _onRegisterPressed(context), child: _buildTextDescription());
  }

  void _onRegisterPressed(BuildContext context) {
    return context.read<SignInFormBloc>().add(const SignInFormEvent.registerWithEmailAndPasswordPressed());
  }

  Text _buildTextDescription() => const Text(RegisterConstants.registerButton);
}

