// ignore_for_file: implementation_imports
import 'package:flutter/material.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:provider/src/provider.dart';
import 'package:kantor_tukan/presentation/sign_in/constants.dart';


class ButtonSignInEmail extends StatelessWidget {
  const ButtonSignInEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => _onSignInPressed(context),
      child: _getTextDescription(),
    );
  }

  void _onSignInPressed(BuildContext context) {
    return context.read<SignInFormBloc>().add(const SignInFormEvent.signInWithEmailAndPasswordPressed());
  }

  Text _getTextDescription() => const Text(SignInConstants.signIn);
}
