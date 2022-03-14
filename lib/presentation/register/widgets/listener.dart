import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/app_auth_bloc.dart';
import '../../../application/auth/register/register_form_bloc.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../exchange_rate/exchange_rate_page.dart';
import 'error_snack_bar.dart';

class RegisterListener
{
  void call(BuildContext context, RegisterFormState state) {
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
    context.read<AppAuthBloc>().add(const AppAuthEvent.authCheckRequested());
    Navigator.of(context).popAndPushNamed(ExchangeRatePage.routeName);
  }
}