import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/core/app_theme.dart';
import 'package:kantor_tukan/presentation/core/pres_const.dart';
import 'package:kantor_tukan/presentation/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: PresConst.nameOfCantor,
      home: const SignInPage(),
      theme: AppTheme().buildLightTheme(),
    );
  }
}
