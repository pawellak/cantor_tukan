import 'package:flutter/material.dart';

import 'functions.dart';

class MenuAppBarPopUpMenu {
  PopupMenuButton<String> call(BuildContext context, List<String> optionsInMenu) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        _onSelect(context, value);
      },
      itemBuilder: (_) {
        return _buildPopupMenuItem(optionsInMenu);
      },
    );
  }

  void _onSelect(BuildContext context, String value) {
    MenuAppBarFunctions().handleClick(context, value);
  }

  List<PopupMenuItem<String>> _buildPopupMenuItem(List<String> optionsInMenu) {
    return optionsInMenu.map(
      (String choice) {
        return PopupMenuItem<String>(value: choice, child: Text(choice));
      },
    ).toList();
  }
}
