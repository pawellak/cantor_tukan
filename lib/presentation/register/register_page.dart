import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/injection.dart';
import 'package:kantor_tukan/presentation/register/widgets/appbar.dart';
import 'package:kantor_tukan/presentation/register/widgets/register_form.dart';

import '../../application/auth/register/register_form_bloc.dart';
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
        appBar: const RegisterAppBar(),
        body: _buildRegisterForm(),
      ),
    );
  }

  BlocProvider<RegisterFormBloc> _buildRegisterForm() {
    return BlocProvider(create: (context) => getIt<RegisterFormBloc>(), child: const RegisterForm());
  }

  Future<bool> _onWillPop(BuildContext context) async {
    Navigator.of(context).popAndPushNamed(SignInPage.routeName);
    return false;
  }
}
