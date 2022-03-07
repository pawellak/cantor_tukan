import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/presentation/orders/orders_page.dart';
import 'package:kantor_tukan/presentation/splash/splash_page.dart';

import '../../application/auth/app_auth_bloc.dart';
import 'package:kantor_tukan/presentation/core/constants.dart';

class MenuAppBar extends StatelessWidget {
  const MenuAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppAuthBloc, AppAuthState>(
      builder: (context, state) {
        return state.map(initial: (initial) {
          List<String> optionsInMenu = [];
          return  _popupMenuButton(context,optionsInMenu);
        }, authenticated: (authenticated) {
          List<String> optionsInMenu = [];
          optionsInMenu.add(Constants.orders);
          optionsInMenu.add(Constants.menu);
         return  _popupMenuButton(context,optionsInMenu);

        }, unauthenticated: (unauthenticated) {
          List<String> optionsInMenu = [];
          return  _popupMenuButton(context,optionsInMenu);
        });
      },
    );
  }
}

PopupMenuButton<String> _popupMenuButton(BuildContext context,List<String> optionsInMenu) {
  return PopupMenuButton<String>(
    onSelected: (value) {
      _handleClick(context,value);
    },
    itemBuilder: (BuildContext context) {
      return _buildPopupMenuItem(optionsInMenu);
    },
  );
}

List<PopupMenuItem<String>> _buildPopupMenuItem(List<String> optionsInMenu) {
  return optionsInMenu.map(
    (String choice) {
      return PopupMenuItem<String>(
        value: choice,
        child: Text(choice),
      );
    },
  ).toList();
}

void _handleClick(BuildContext context,String option) {
  switch (option) {
    case Constants.orders:
      _orders(context);
      break;
    case Constants.menu:
      _menu(context);
      break;
  }
}

void _orders(BuildContext context) {
  Navigator.of(context).pushNamed(OrdersPage.routeName);
}

void _menu(BuildContext context) {
 Navigator.of(context).pushNamedAndRemoveUntil(SplashPage.routeName, (route) => route.isFirst);
}
