import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/register/constants.dart';

class LogoRegister extends StatelessWidget {
  const LogoRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const SizedBox(
      height: RegisterConstants.logoSpace,
      child: Center(
        child: Text(
          RegisterConstants.registerUpper,
          style: TextStyle(fontSize: RegisterConstants.logoSize),
        ),
      ),
    );
  }
}
