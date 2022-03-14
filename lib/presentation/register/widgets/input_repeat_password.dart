// ignore_for_file: implementation_imports
import 'package:flutter/material.dart';
import 'package:kantor_tukan/application/auth/register/register_form_bloc.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:kantor_tukan/presentation/register/constants.dart';
import 'package:provider/src/provider.dart';

class InputRepeatPassword extends StatelessWidget {
  const InputRepeatPassword({Key? key}) : super(key: key);

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
      labelText: RegisterConstants.passwordRepeat,
    );
  }

  void onPasswordChanged(BuildContext context, String value) {
    return context.read<RegisterFormBloc>().add(RegisterFormEvent.passwordRepeatChanged(value));
  }

  String? _getValidator(BuildContext context) {
    return context.read<RegisterFormBloc>().state.passwordRepeat.value.fold(
          (f) => _buildPasswordNotValid(f),
          (_) => _buildPasswordValid(),
        );
  }

  String? _buildPasswordNotValid(ValueFailure<String> f) {
    return f.maybeMap(
      shortPassword: (_) => RegisterConstants.passwordNotValid,
      orElse: () => _buildPasswordValid(),
    );
  }

  String? _buildPasswordValid() => null;
}
