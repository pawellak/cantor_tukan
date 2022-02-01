import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/core/pres_const.dart';

class LogoSignIn extends StatelessWidget {
  const LogoSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: PresConst.sipLogoSpace,
      child: Center(
        child: Text(
          PresConst.sipLogo,
          style: TextStyle(fontSize: PresConst.sipLogoSize),
        ),
      ),
    );
  }
}
