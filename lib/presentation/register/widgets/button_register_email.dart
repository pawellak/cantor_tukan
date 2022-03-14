// ignore_for_file: implementation_imports
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/auth/register/register_form_bloc.dart';
import 'package:kantor_tukan/presentation/register/constants.dart';

class ButtonRegisterEmail extends StatelessWidget {
  const ButtonRegisterEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: () => _onRegisterPressed(context), child: _buildTextDescription());
  }

  void _onRegisterPressed(BuildContext context) {
    context.read<RegisterFormBloc>().add(const RegisterFormEvent.registerWithEmailAndPasswordPressed());
  }

  Text _buildTextDescription() => const Text(RegisterConstants.registerUpper);
}
