import 'package:flutter/material.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kantor_tukan/presentation/core/pres_const.dart';
import 'package:provider/src/provider.dart';

class ButtonSignInWithGoogle extends StatelessWidget {
  const ButtonSignInWithGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _onPressed(context),
      child: _buildText(),
    );
  }

  void _onPressed(BuildContext context) {
    return context
        .read<SignInFormBloc>()
        .add(const SignInFormEvent.signInWithGooglePressed());
  }

  Text _buildText() {
    return const Text(
      PresConst.sipSignInWithGoogle,
    );
  }
}
