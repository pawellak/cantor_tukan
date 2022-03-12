import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/sign_in/constants.dart';

class LogoRegister extends StatelessWidget {
  const LogoRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: Constants.logoSpace,
      child: Center(
        child: Text(
          Constants.logo,
          style: TextStyle(fontSize: Constants.logoSize),
        ),
      ),
    );
  }
}
