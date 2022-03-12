import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kantor_tukan/injection.dart';
import 'package:kantor_tukan/presentation/register/constants.dart';
import 'package:kantor_tukan/presentation/register/widgets/register_form.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/sign_in_form.dart';

import '../sign_in/sign_in_page.dart';

class RegisterPage extends StatelessWidget {
  static const routeName = '/register';

  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return _onWillPop(context);
      },
      child: Scaffold(
        appBar: _buildSignInAppBar(),
        body: _buildRegisterForm(),
      ),
    );
  }

  AppBar _buildSignInAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text(RegisterConstants.register),
    );
  }

  BlocProvider<SignInFormBloc> _buildRegisterForm() {
    return BlocProvider(create: (context) => getIt<SignInFormBloc>(), child: const RegisterForm());
  }

  Future<bool> _onWillPop(BuildContext context) async {
    Navigator.of(context).popAndPushNamed(SignInPage.routeName);
    return false;
  }
}
