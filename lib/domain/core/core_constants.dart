class CoreConstants {
  static const minPasswordLength = 6;
  static const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  static const value = 'Value: ';
  static const explanationOfValueError =
      'Encountered a ValueFailure at an unrecoverable point terminating.';
  static const failureWas = 'Failure was:';
}
