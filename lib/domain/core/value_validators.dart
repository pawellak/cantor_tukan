import 'package:dartz/dartz.dart';
import 'package:kantor_tukan/domain/core/core_constants.dart';
import 'package:kantor_tukan/domain/core/failures.dart';

class ValueValidators {
  Either<ValueFailure<String>, String> emailAddress(String input) {
    if (RegExp(CoreConstants.emailRegex).hasMatch(input)) {
      return Right(input);
    } else {
      return Left(ValueFailure.invalidEmail(failedValue: input));
    }
  }

  Either<ValueFailure<String>, String> validatePassword(String input) {
    if (input.length >= CoreConstants.minPasswordLength) {
      return Right(input);
    } else {
      return Left(ValueFailure.shortPassword(failedValue: input));
    }
  }
}
