import 'package:kantor_tukan/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure.');
  }
}
