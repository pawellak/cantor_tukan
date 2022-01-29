import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Kantor Tukan',
      home: SignInPage(),
    );
  }
}
