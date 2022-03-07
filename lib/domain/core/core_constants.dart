class CoreConstants {
  static const maxValueCurrency = 999999999.0;
  static const minValueCurrency = 10.0;
  static const maxNumberCurrency = 10;
  static const timerDurationInSecTimer = 120;
  static const finishTimeTimer = 0;
  static const fixedNumberOfValue = 2;

  static const maxCurrencyPrice = 10.0;
  static const minCurrencyPrice = 0.0;
  static const minPasswordLength = 6;
  static const minPossiblyYearData = 2021;
  static const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  static const valueToString = 'Value: ';
  static const explanationOfValueError = 'Encountered a ValueFailure at an unrecoverable point terminating.';
  static const failureWas = 'Failure was:';
}
