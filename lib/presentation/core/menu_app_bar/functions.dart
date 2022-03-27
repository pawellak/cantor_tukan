import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/presentation/about_me/about_me_page.dart';
import 'package:kantor_tukan/presentation/core/constants.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';

import '../../../application/auth/app_auth_bloc.dart';
import '../../contact/contact_page.dart';
import '../../orders/orders_page.dart';
import '../../sign_in/sign_in_page.dart';

class MenuAppBarFunctions {
  void handleClick(BuildContext context, String option) {
    switch (option) {
      case CoreConstants.menuOrders:
        _orders(context);
        break;
      case CoreConstants.menuCurrencies:
        _currencies(context);
        break;
      case CoreConstants.menuSignOut:
        _signOut(context);
        break;
      case CoreConstants.menuSignIn:
        _signIn(context);
        break;
      case CoreConstants.menuContact:
        _contact(context);
        break;
      case CoreConstants.menuAboutMe:
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
    Navigator.of(context).popAndPushNamed(ContactPage.routeName);
  }

  void _aboutMe(BuildContext context) {
    Navigator.of(context).popAndPushNamed(AboutMePage.routeName);
  }
}
