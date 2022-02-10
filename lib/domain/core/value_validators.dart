import 'package:dartz/dartz.dart';
import 'package:kantor_tukan/domain/core/core_constants.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/failures.dart';

class ValueValidators {
  Either<ValueFailure<String>, String> emailAddress(String input) {
    if (RegExp(CoreConstants.emailRegex).hasMatch(input)) {
      return Right(input);
    } else {
      return Left(ValueFailure.invalidEmail(failedValue: input));
    }
  }

  Either<ValueFailure<String>, String> password(String input) {
    if (input.length >= CoreConstants.minPasswordLength) {
      return Right(input);
    } else {
      return Left(ValueFailure.shortPassword(failedValue: input));
    }
  }

  Either<ValueFailure<double>, double> currencyValue(double input) {
    if (input < CoreConstants.minValueCurrency) {
      return Left(ValueFailure.currencyValueTooSmall(failedValue: input, min: CoreConstants.minValueCurrency));
    } else if (input > CoreConstants.maxValueCurrency) {
      return Left(ValueFailure.currencyValueTooBig(failedValue: input, max: CoreConstants.maxValueCurrency));
    } else {
      return Right(input);
    }
  }

  Either<ValueFailure<EnumCurrency>, EnumCurrency> currency(EnumCurrency input) {
    if (input != EnumCurrency.undefined) {
      return right(input);
    } else {
      return left(ValueFailure.unknownEnum(failedValue: input));
    }
  }

  Either<ValueFailure<EnumTransactionType>, EnumTransactionType> transactionType(EnumTransactionType input) {
    if (input != EnumTransactionType.undefined) {
      return right(input);
    } else {
      return left(ValueFailure.unknownEnum(failedValue: input));
    }
  }

  Either<ValueFailure<EnumTransactionStatus>, EnumTransactionStatus> transactionStatus(EnumTransactionStatus input) {
    if (input != EnumTransactionStatus.undefined) {
      return right(input);
    } else {
      return left(ValueFailure.unknownEnum(failedValue: input));
    }
  }



}
