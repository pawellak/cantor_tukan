import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/core/constants.dart';
import 'package:kantor_tukan/presentation/core/menu_app_bar/popup_menu.dart';

class MenuAppBarAuthenticated {
  PopupMenuButton<String> call(BuildContext context) {
    List<String> optionsInMenu = [];
    optionsInMenu.add(Constants.menuOrders);
    optionsInMenu.add(Constants.menuCurrencies);
    optionsInMenu.add(Constants.menuSignOut);
    optionsInMenu.add(Constants.menuAboutMe);
    optionsInMenu.add(Constants.menuContact);
    return MenuAppBarPopUpMenu().call(context, optionsInMenu);
  }
}
