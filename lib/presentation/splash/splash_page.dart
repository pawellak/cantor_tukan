import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/auth/app_auth_bloc.dart';
import 'package:kantor_tukan/presentation/sign_in/sign_in_page.dart';

const loading = 'Wczytywanie';

class SplashPage extends StatelessWidget {
  static const routeName = '/splash';
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppAuthBloc, AppAuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) {
              print(loading);
            },
            unauthenticated: (_) {
              Navigator.of(context).pushNamed(SignInPage.routeName);
            });
      },
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false, title: const Text(loading)),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
