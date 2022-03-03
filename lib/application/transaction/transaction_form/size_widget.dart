import '../../../presentation/transaction/constants.dart';

class SizeWidget {
  late double height;

  SizeWidget(double heightOfScreen) {
    height = heightOfScreen;
  }

  double logoHeight() => height * Constants.proportionTwentyPercent;

  double tipHeight() => height * Constants.proportionFifteenPercent;

  double calculationHeight() => height * Constants.proportionTenPercent;
}
