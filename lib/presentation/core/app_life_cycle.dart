import 'package:flutter/material.dart';

import '../information/information_page.dart';
import '../transaction/constants.dart';

class AppLifeCycle
{
  void call(BuildContext context,AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.resumed:
        Navigator.of(context).popAndPushNamed(InformationPage.routeName, arguments: TransactionConstants.background);
        break;
      case AppLifecycleState.paused:
        break;
      case AppLifecycleState.detached:
        break;
    }
  }
}


