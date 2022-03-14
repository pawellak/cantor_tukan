import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/auth/register/register_form_bloc.dart';
import 'package:kantor_tukan/presentation/register/widgets/builder.dart';
import 'package:kantor_tukan/presentation/register/widgets/listener.dart';


class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
      listener: RegisterListener().call,
      builder: RegisterBuilder().call,
    );
  }
}
