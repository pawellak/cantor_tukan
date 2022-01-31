import 'package:flutter/material.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:kantor_tukan/presentation/core/pres_const.dart';
import 'package:provider/src/provider.dart';

class InputPassword extends StatelessWidget {
  const InputPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: _buildDecoration(),
      obscureText: true,
      autocorrect: false,
      onChanged: (value) => _buildOnChanged(context, value),
      validator: (_) =>
          _buildValidator(context),
    );
  }

  InputDecoration _buildDecoration() {
    return const InputDecoration(
      prefixIcon: Icon(Icons.lock),
      labelText: PresConst.sipPassword,
    );
  }

  void _buildOnChanged(BuildContext context, String value) {
    return context
        .read<SignInFormBloc>()
        .add(SignInFormEvent.passwordChanged(value));
  }

  String? _buildValidator(BuildContext context) {
    return context.read<SignInFormBloc>().state.password.value.fold(
              (f) => _buildPasswordNotValid(f),
              (_) => _buildPasswordValid(),
            );
  }

  String? _buildPasswordNotValid(ValueFailure<String> f) {
    return f.maybeMap(
              shortPassword: (_) => PresConst.sipPasswordNotValid,
              orElse: () => _buildPasswordValid(),
            );
  }

  Null _buildPasswordValid() => null;
}
