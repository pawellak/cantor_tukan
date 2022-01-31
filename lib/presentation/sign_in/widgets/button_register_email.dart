import 'package:flutter/material.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kantor_tukan/presentation/core/pres_const.dart';
import 'package:provider/src/provider.dart';

class ButtonRegisterEmail extends StatelessWidget {
  const ButtonRegisterEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () => _onPressed(context), child: _buildText());
  }

  void _onPressed(BuildContext context) {
    return context
        .read<SignInFormBloc>()
        .add(const SignInFormEvent.registerWithEmailAndPasswordPressed());
  }

  Text _buildText() => const Text(PresConst.sipRegister);
}
