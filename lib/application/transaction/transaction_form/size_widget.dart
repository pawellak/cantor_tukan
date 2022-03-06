import '../../../presentation/transaction/constants.dart';

class SizeWidget {
  late double height;

  SizeWidget(double heightOfScreen) {
    height = heightOfScreen;
  }

  double logoHeight() => height * Constants.proportionFifteenPercent;

  double tipHeight() => height * Constants.proportionFivePercent;

  double calculationHeight() => height * Constants.proportionFivePercent;
}
