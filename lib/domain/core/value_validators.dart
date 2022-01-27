import 'package:dartz/dartz.dart';
import 'package:kantor_tukan/domain/core/failures.dart';

const minPasswordLength = 6;
const emailRegex =
    r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

class ValueValidators
{
  Either<ValueFailure<String>, String> emailAddress(String input) {
    if (RegExp(emailRegex).hasMatch(input)) {
      return Right(input);
    } else {
      return Left(ValueFailure.invalidEmail(failedValue: input));
    }
  }

  Either<ValueFailure<String>, String> validatePassword(String input) {
    if (input.length >= minPasswordLength) {
      return Right(input);
    } else {
      return Left(ValueFailure.shortPassword(failedValue: input));
    }
  }
}




