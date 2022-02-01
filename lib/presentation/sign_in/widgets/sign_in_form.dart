import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kantor_tukan/presentation/core/pres_const.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/button_register_email.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/button_sign_in_email.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/button_sign_in_google.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/custom_progress_indicator.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/input_email.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/input_password.dart';
import 'package:kantor_tukan/presentation/sign_in/widgets/logo_sign_in.dart';

const canceled = 'Anuluwano operację';
const serverError = 'Błąd servera';
const emailInUse = 'Adres email w użyciu';
const invalidEmailOrPassword = 'Niepawidłowe dane logowania';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        _buildErrorSnackBar(state, context);
      },
      builder: (context, state) {
        return _buildForm(state, context);
      },
    );
  }

  void _buildErrorSnackBar(SignInFormState state, BuildContext context) {
    state.authFailureOrSuccessOption.fold(
      () {},
      (either) => {
        either.fold(
          (failure) {
            FlushbarHelper.createError(
                message: failure.map(cancelledByUser: (_) {
              return canceled;
            }, serverError: (_) {
              return serverError;
            }, emailAlreadyInUse: (_) {
              return emailInUse;
            }, invalidEmailAndPasswordCombination: (_) {
              return invalidEmailOrPassword;
            })).show(context);
          },
          (r) {
            //go to another page
          },
        )
      },
    );
  }

  Form _buildForm(SignInFormState state, BuildContext context) {
    return Form(
      autovalidateMode: _isShowErrorMessageOn(state),
      child: ListView(
        padding: const EdgeInsets.all(PresConst.sipPadding),
        children: _bodyListView(context, state),
      ),
    );
  }

  List<Widget> _bodyListView(BuildContext context, SignInFormState state) {
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

  SizedBox _emptyHeightSpace() =>
      const SizedBox(height: PresConst.sipEmptySpace);

  SizedBox _emptyWidthSpace() => const SizedBox(width: PresConst.sipEmptySpace);

  AutovalidateMode _isShowErrorMessageOn(SignInFormState state) {
    return state.showErrorMessages
        ? AutovalidateMode.always
        : AutovalidateMode.disabled;
  }
}
