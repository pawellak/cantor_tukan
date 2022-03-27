import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';

class AppLifeCycle
{
  void call(BuildContext context,AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.resumed:
        Navigator.of(context).popAndPushNamed(ExchangeRatePage.routeName);
        break;
      case AppLifecycleState.paused:
        break;
      case AppLifecycleState.detached:
        break;
    }
  }
}


