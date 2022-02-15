import 'package:dartz/dartz.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/failures.dart';

class ValueConverters {
  Either<ValueFailure<String>, double> toDoubleFromString(String input) {
    final currency = double.tryParse(input);

    if (currency == null) {
      return Left(ValueFailure.invalidStringToDouble(failedValue: input));
    } else {
      return Right(currency);
    }
  }

  Either<ValueFailure<EnumCurrency>, EnumCurrency> toEnumCurrencyFromString(String? input) {
    const enumList = EnumCurrency.values;
    final enumOrNull = enumList.toEnumFromString<EnumCurrency>(input);


    if (enumOrNull == null) {
      return left(const ValueFailure.unknownEnum(failedValue: EnumCurrency.undefined));
    } else {
      return right(enumOrNull);
    }
  }

  Either<ValueFailure<String>, String> toStringFromEnumCurrency(EnumCurrency input) {
    final resultOfConversion = input.toShortString();
    return right(resultOfConversion);
  }

  Either<ValueFailure<EnumTransactionType>, EnumTransactionType> toEnumTransactionTypeFromString(String? input) {
    const enumList = EnumTransactionType.values;
    final enumOrNull = enumList.toEnumFromString<EnumTransactionType>(input);

    if (enumOrNull == null) {
      return left(const ValueFailure.unknownEnum(failedValue: EnumTransactionType.undefined));
    } else {
      return right(enumOrNull);
    }
  }

  Either<ValueFailure<String>, String> toStringFromEnumTransactionType(EnumTransactionType input) {
    final resultOfConversion = input.toShortString();
    return right(resultOfConversion);
  }

  Either<ValueFailure<EnumTransactionStatus>, EnumTransactionStatus> toEnumTransactionStatusFromString(String? input) {
    const enumList = EnumTransactionStatus.values;
    final enumOrNull = enumList.toEnumFromString<EnumTransactionStatus>(input);

    if (enumOrNull == null) {
      return left(const ValueFailure.unknownEnum(failedValue: EnumTransactionStatus.undefined));
    } else {
      return right(enumOrNull);
    }
  }

  Either<ValueFailure<String>, String> toStringFromEnumTransactionStatus(EnumTransactionStatus input) {
    final resultOfConversion = input.toShortString();
    return right(resultOfConversion);
  }

  Either<ValueFailure<DateTime>, DateTime> toDateTimeFromIso8601String(String? input) {
    final incorrectData = DateTime(0);
    final failure = ValueFailure.invalidDate(failedValue: incorrectData);

    if (input == null) {
      return left(failure);
    } else {
      final dateTime = DateTime.tryParse(input);

      if (dateTime == null) {
        return left(failure);
      } else {
        return right(dateTime);
      }
    }
  }
}
