// ignore_for_file: implementation_imports
import 'package:flutter/material.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:provider/src/provider.dart';
import 'package:kantor_tukan/presentation/sign_in/constants.dart';

class ButtonSignInWithGoogle extends StatelessWidget {
  const ButtonSignInWithGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _onSignInWithGooglePressed(context),
      child: _getButtonDescription(),
    );
  }

  void _onSignInWithGooglePressed(BuildContext context) {
    return context.read<SignInFormBloc>().add(const SignInFormEvent.signInWithGooglePressed());
  }

  Text _getButtonDescription() {
    return const Text(
      SignInConstants.signInWithGoogle,
    );
  }
}
