import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/presentation/core/constants.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';

import '../../../application/auth/app_auth_bloc.dart';
import '../../orders/orders_page.dart';
import '../../sign_in/sign_in_page.dart';
import '../../splash/splash_page.dart';

class MenuAppBarFunctions {
  void handleClick(BuildContext context, String option) {
    switch (option) {
      case Constants.menuOrders:
        _orders(context);
        break;
      case Constants.menuCurrencies:
        _currencies(context);
        break;
      case Constants.menuSignOut:
        _signOut(context);
        break;
      case Constants.menuSignIn:
        _signIn(context);
        break;
      case Constants.menuContact:
        _contact(context);
        break;
      case Constants.menuAboutMe:
        _aboutMe(context);
        break;
    }
  }

  void _orders(BuildContext context) {
    Navigator.of(context).popAndPushNamed(OrdersPage.routeName);
  }

  void _currencies(BuildContext context) {
    Navigator.of(context).popAndPushNamed(ExchangeRatePage.routeName);
  }

  void _signOut(BuildContext context) {
    context.read<AppAuthBloc>().add(const AppAuthEvent.signedOut());
  }

  void _signIn(BuildContext context) {
    Navigator.of(context).popAndPushNamed(SignInPage.routeName);
  }

  void _contact(BuildContext context) {
    ///TODO: contact page
  }

  void _aboutMe(BuildContext context) {
    ///TODO: about me page
  }
}
