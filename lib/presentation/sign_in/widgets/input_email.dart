// ignore_for_file: implementation_imports
import 'package:flutter/material.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:provider/src/provider.dart';
import 'package:kantor_tukan/presentation/sign_in/constants.dart';

class InputEmail extends StatelessWidget {
  const InputEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: _getDecorator(context),
      autocorrect: false,
      onChanged: (value) => _onTextInputChanged(context, value),
      validator: (_) => _getValidator(context),
    );
  }

  InputDecoration _getDecorator(BuildContext context) {
    return InputDecoration(
      prefixIcon: Icon(
        Icons.email,
        color: Theme.of(context).colorScheme.secondary,
      ),
      labelText: SignInConstants.email,
    );
  }

  void _onTextInputChanged(BuildContext context, String value) {
    return context.read<SignInFormBloc>().add(SignInFormEvent.emailChanged(value));
  }

  String? _getValidator(BuildContext context) {
    return context.read<SignInFormBloc>().state.emailAddress.value.fold(
          (f) => _getEmailNotValid(f),
          (_) => _getEmailValid(),
        );
  }

  String? _getEmailNotValid(ValueFailure<String> f) {
    return f.maybeMap(
      invalidEmail: (_) => SignInConstants.emailNotValid,
      orElse: () => _getEmailValid(),
    );
  }

  String? _getEmailValid() => null;
}
