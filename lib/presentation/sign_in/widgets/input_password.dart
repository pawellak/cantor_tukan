// ignore_for_file: implementation_imports
import 'package:flutter/material.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:provider/src/provider.dart';
import 'package:kantor_tukan/presentation/sign_in/constants.dart';

class InputPassword extends StatelessWidget {
  const InputPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: _getDecoration(context),
      obscureText: true,
      autocorrect: false,
      onChanged: (value) => onPasswordChanged(context, value),
      validator: (_) => _getValidator(context),
    );
  }

  InputDecoration _getDecoration(BuildContext context) {
    return InputDecoration(
      prefixIcon: Icon(Icons.lock, color: Theme.of(context).colorScheme.secondary),
      labelText: SignInConstants.password,
    );
  }

  void onPasswordChanged(BuildContext context, String value) {
    return context.read<SignInFormBloc>().add(SignInFormEvent.passwordChanged(value));
  }

  String? _getValidator(BuildContext context) {
    return context.read<SignInFormBloc>().state.password.value.fold(
          (f) => _buildPasswordNotValid(f),
          (_) => _buildPasswordValid(),
        );
  }

  String? _buildPasswordNotValid(ValueFailure<String> f) {
    return f.maybeMap(
      shortPassword: (_) => SignInConstants.passwordNotValid,
      orElse: () => _buildPasswordValid(),
    );
  }

  String? _buildPasswordValid() => null;
}
