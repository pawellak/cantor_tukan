import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kantor Tukan',
      home: const SignInPage(),
      theme: ThemeData.light().copyWith(
        appBarTheme: buildAppBarTheme(),
        inputDecorationTheme: buildInputDecorationTheme(),
      ),
    );
  }

  InputDecorationTheme buildInputDecorationTheme() {
    return InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  AppBarTheme buildAppBarTheme() {
    return const AppBarTheme(
      foregroundColor: Colors.black87,
      backgroundColor: Colors.amber,
      elevation: 5,
    );
  }
}
