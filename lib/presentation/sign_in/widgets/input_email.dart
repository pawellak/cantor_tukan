import 'package:flutter/material.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:kantor_tukan/presentation/core/pres_const.dart';
import 'package:provider/src/provider.dart';

class InputEmail extends StatelessWidget {
  const InputEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: _buildDecorator(),
      autocorrect: false,
      onChanged: (value) => _onChanged(context, value),
      validator: (_) => _buildValidator(context),
    );
  }

  InputDecoration _buildDecorator() {
    return const InputDecoration(
      prefixIcon: Icon(Icons.email),
      labelText: PresConst.sipEmail,
    );
  }

  void _onChanged(BuildContext context, String value) {
    return context
        .read<SignInFormBloc>()
        .add(SignInFormEvent.emailChanged(value));
  }

  String? _buildValidator(BuildContext context) {
    return context.read<SignInFormBloc>().state.emailAddress.value.fold(
          (f) => _buildEmailNotValid(f),
          (_) => _buildEmailValid(),
        );
  }

  String? _buildEmailNotValid(ValueFailure<String> f) {
    return f.maybeMap(
      invalidEmail: (_) => PresConst.sipEmailNotValid,
      orElse: () => _buildEmailValid(),
    );
  }

  Null _buildEmailValid() => null;
}
