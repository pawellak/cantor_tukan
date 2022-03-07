import 'package:dartz/dartz.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/failures.dart';

const oneDigit = 1;
const additionalZero = 0;
const emptyString = '';

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

  Either<ValueFailure<String>, String> toDailyDateStringFromDateTime(DateTime dateTime) {
    var dailyDate = emptyString;

    String sYear = dateTime.year.toString();
    String sMonth = dateTime.month.toString();
    String sDay = dateTime.day.toString();

    sMonth = _convertDateToTwoDigits(sMonth);
    sDay = _convertDateToTwoDigits(sDay);

    dailyDate = '$sDay/$sMonth/$sYear';
    return right(dailyDate);
  }

  Either<ValueFailure<String>, String> toDailyTimeStringFromDateTime(DateTime dateTime) {
    var dailyDate = emptyString;

    String sYear = dateTime.year.toString();
    String sMonth = dateTime.month.toString();
    String sDay = dateTime.day.toString();
    String sHour = dateTime.hour.toString();
    String sMin = dateTime.minute.toString();
    String sSec = dateTime.second.toString();

    sMonth = _convertDateToTwoDigits(sMonth);
    sDay = _convertDateToTwoDigits(sDay);
    sHour = _convertDateToTwoDigits(sHour);
    sMin = _convertDateToTwoDigits(sMin);
    sSec = _convertDateToTwoDigits(sSec);

    dailyDate = '$sDay/$sMonth/$sYear $sHour:$sMin:$sSec';
    return right(dailyDate);
  }

  String _convertDateToTwoDigits(String date) {
    if (date.length == oneDigit) {
      date = '$additionalZero$date';
    }
    return date;
  }
}
