import '../../../presentation/transaction/constants.dart';

class SizeWidget {
  late double heightOfScreen;

  SizeWidget(double heightOfScreen) {
    heightOfScreen = this.heightOfScreen;
  }

  double logoHeight() => heightOfScreen * Constants.proportionTwentyPercent;

  double tipHeight() => heightOfScreen * Constants.proportionFifteenPercent;

  double calculationHeight() => heightOfScreen * Constants.proportionTenPercent;
}
