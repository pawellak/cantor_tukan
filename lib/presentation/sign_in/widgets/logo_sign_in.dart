import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/sign_in/constants.dart';

class LogoSignIn extends StatelessWidget {
  const LogoSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: SignInConstants.logoSpace,
      child: Center(
        child: Text(
          SignInConstants.logo,
          style: TextStyle(fontSize: SignInConstants.logoSize),
        ),
      ),
    );
  }
}
