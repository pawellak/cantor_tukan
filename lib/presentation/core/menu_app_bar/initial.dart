import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/core/menu_app_bar/popup_menu.dart';

class MenuAppBarInitial {
  PopupMenuButton<String> call(BuildContext context) {
    List<String> optionsInMenu = [];
    return MenuAppBarPopUpMenu().call(context, optionsInMenu);
  }
}
