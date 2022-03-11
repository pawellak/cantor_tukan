import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kantor_tukan/injection.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:kantor_tukan/presentation/sign_in/constants.dart';

import '../core/menu_app_bar/menu_app_bar.dart';

class SignInPage extends StatelessWidget {
  static const routeName = '/sign-in';

  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildSignInAppBar(),
      body: _buildSignInForm(),
    );
  }

  AppBar _buildSignInAppBar() {
    return AppBar(
      actions: const [MenuAppBar()],
      automaticallyImplyLeading: false,
      title: const Text(Constants.signIn),
    );
  }

  BlocProvider<SignInFormBloc> _buildSignInForm() {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: const SignInForm(),
    );
  }
}
