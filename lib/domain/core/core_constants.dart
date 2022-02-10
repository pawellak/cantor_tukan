class CoreConstants {
  static const maxValueCurrency = 999999.0;
  static const minValueCurrency = 10.0;
  static const minPasswordLength = 6;
  static const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  static const valueToString = 'Value: ';
  static const explanationOfValueError =
      'Encountered a ValueFailure at an unrecoverable point terminating.';
  static const failureWas = 'Failure was:';
  static const noDate = '---';
  static const minPossiblyYearData = 2021;
}
