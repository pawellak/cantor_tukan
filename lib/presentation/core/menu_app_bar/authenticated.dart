import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/core/constants.dart';
import 'package:kantor_tukan/presentation/core/menu_app_bar/popup_menu.dart';

class MenuAppBarAuthenticated {
  PopupMenuButton<String> call(BuildContext context) {
    List<String> optionsInMenu = [];
    optionsInMenu.add(CoreConstants.menuOrders);
    optionsInMenu.add(CoreConstants.menuCurrencies);
    optionsInMenu.add(CoreConstants.menuSignOut);
    optionsInMenu.add(CoreConstants.menuContact);
    optionsInMenu.add(CoreConstants.menuAboutMe);
    return MenuAppBarPopUpMenu().call(context, optionsInMenu);
  }
}
