import 'package:kantor_tukan/domain/core/core_constants.dart';
import 'package:kantor_tukan/domain/core/failures.dart';


class NotAuthenticatedError extends Error{}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString('${CoreConstants.explanationOfValueError} '
        '${CoreConstants.failureWas} '
        '$valueFailure.');
  }
}
