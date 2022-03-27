import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/auth/app_auth_bloc.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kantor_tukan/domain/auth/auth_failure.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/button_register_email.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/button_sign_in_email.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/button_sign_in_google.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/custom_progress_indicator.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/error_snack_bar.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/input_email.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/input_password.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/logo_sign_in.dart';
import 'package:kantor_tukan/presentation/sign_in/constants.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: _getListener,
      builder: _getBuilder,
    );
  }

  void _getListener(BuildContext context, SignInFormState state) {
    state.authFailureOrSuccessOption.fold(_getNone, (Either<AuthFailure, Unit> either) {
      either.fold((AuthFailure failure) {
        _getFailureOption(context, failure);
      }, (_) {
        _getSuccessOption(context);
      });
    });
  }

  _getNone() {}

  void _getFailureOption(BuildContext context, AuthFailure failure) {
    ErrorSnackBar().call(context, failure);
  }

  void _getSuccessOption(BuildContext context) {
    Navigator.of(context).popAndPushNamed(ExchangeRatePage.routeName);
    context.read<AppAuthBloc>().add(const AppAuthEvent.authCheckRequested());
  }

  Widget _getBuilder(context, state) {
    return Form(
      autovalidateMode: _isShowErrorMessageOn(state),
      child: ListView(
        padding: _getPadding(),
        children: _buildBodySignIn(context, state),
      ),
    );
  }

  EdgeInsets _getPadding() => const EdgeInsets.all(SignInConstants.padding);

  List<Widget> _buildBodySignIn(BuildContext context, SignInFormState state) {
    return <Widget>[
      const LogoSignIn(),
      _emptyHeightSpace(),
      const InputEmail(),
      _emptyHeightSpace(),
      const InputPassword(),
      _emptyHeightSpace(),
      _signInButtons(),
      _emptyHeightSpace(),
      const ButtonSignInWithGoogle(),
      _emptyHeightSpace(),
      if (state.isSubmitting) _buildLinearProgressIndicator()
    ];
  }

  Widget _buildLinearProgressIndicator() {
    return const CustomProgressIndicator();
  }

  Row _signInButtons() {
    return Row(
      children: [
        const Expanded(
          child: ButtonSignInEmail(),
        ),
        _emptyWidthSpace(),
        const Expanded(
          child: ButtonRegisterEmail(),
        ),
      ],
    );
  }

  SizedBox _emptyHeightSpace() => const SizedBox(height: SignInConstants.emptySpace);

  SizedBox _emptyWidthSpace() => const SizedBox(width: SignInConstants.emptySpace);

  AutovalidateMode _isShowErrorMessageOn(SignInFormState state) {
    return state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled;
  }
}
