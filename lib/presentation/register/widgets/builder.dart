import 'package:flutter/material.dart';

import '../../../application/auth/register/register_form_bloc.dart';
import '../constants.dart';
import 'button_register_email.dart';
import 'custom_progress_indicator.dart';
import 'input_email.dart';
import 'input_password.dart';
import 'input_repeat_password.dart';
import 'logo_register.dart';

class RegisterBuilder
{
  Widget call(context, state) {
    return Form(
      autovalidateMode: _isShowErrorMessageOn(state),
      child: ListView(
        padding: _getPadding(),
        children: _buildBodyRegister(context, state),
      ),
    );
  }

  EdgeInsets _getPadding() => const EdgeInsets.all(RegisterConstants.padding);

  List<Widget> _buildBodyRegister(BuildContext context, RegisterFormState state) {
    return <Widget>[
      const LogoRegister(),
      _emptyHeightSpace(),
      const InputEmail(),
      _emptyHeightSpace(),
      const InputPassword(),
      _emptyHeightSpace(),
      const InputRepeatPassword(),
      _emptyHeightSpace(),
      _emptyHeightSpace(),
      const ButtonRegisterEmail(),
      if (state.isSubmitting) _buildLinearProgressIndicator()
    ];
  }

  Widget _buildLinearProgressIndicator() {
    return const CustomProgressIndicator();
  }

  SizedBox _emptyHeightSpace() => const SizedBox(height: RegisterConstants.emptySpace);

  AutovalidateMode _isShowErrorMessageOn(RegisterFormState state) {
    return state.showErrorMessage ? AutovalidateMode.always : AutovalidateMode.disabled;
  }
}