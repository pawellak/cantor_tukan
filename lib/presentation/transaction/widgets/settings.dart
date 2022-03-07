import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../../splash/splash_page.dart';

class Settings
{
  void allowOnlyForPortraitMode() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void allowForLandscapeAndPortraitMode() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  Future<bool> onWillPop(BuildContext context) async {
    Navigator.of(context).pushNamedAndRemoveUntil(SplashPage.routeName, (route) => route.isFirst);
    return false;
  }
}