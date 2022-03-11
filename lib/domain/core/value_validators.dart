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

  Either<ValueFailure<double>, double> currencyBill(double input) {
    if (input < CoreConstants.minValueCurrency) {
      return Left(ValueFailure.currencyValueTooSmall(failedValue: input, min: CoreConstants.minValueCurrency));
    } else if (input > CoreConstants.maxValueCurrency) {
      return Left(ValueFailure.currencyValueTooBig(failedValue: input, max: CoreConstants.maxValueCurrency));
    } else {
      return Right(input);
    }
  }

  Either<ValueFailure<double>, double> currencyValue(double input) {
    if (_isNotInputInteger(input)) {
      return Left(ValueFailure.currencyValueNotInteger(failedValue: input));
    } else if (input < CoreConstants.minValueCurrency) {
      return Left(ValueFailure.currencyValueTooSmall(failedValue: input, min: CoreConstants.minValueCurrency));
    } else if (input > CoreConstants.maxValueCurrency) {
      return Left(ValueFailure.currencyValueTooBig(failedValue: input, max: CoreConstants.maxValueCurrency));
    } else {
      return Right(input);
    }
  }

  bool _isNotInputInteger(double input) => input % 1 != 0;

  Either<ValueFailure<double>, double> currencyPrice(double input) {
    if (input <= CoreConstants.minCurrencyPriceNumbers) {
      return Left(ValueFailure.currencyPriceTooSmall(failedValue: input));
    } else if (input > CoreConstants.maxCurrencyPriceNumbers) {
      return Left(ValueFailure.currencyPriceTooBig(failedValue: input, max: CoreConstants.maxCurrencyPriceNumbers));
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

  Either<ValueFailure<DateTime>, DateTime> dateTime(DateTime input) {
    if (input.isUtc) {
      return left(ValueFailure.dateIsUTC(failedValue: input));
    } else if (input.isAfter(DateTime.utc(CoreConstants.minPossiblyYearData))) {
      return right(input);
    } else {
      return left(ValueFailure.invalidDate(failedValue: input));
    }
  }
}
