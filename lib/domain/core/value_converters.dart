import 'package:dartz/dartz.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/failures.dart';

class ValueConverters {
  Either<ValueFailure<String>, double> toStringFromDouble(String input) {
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

// Either<ValueFailure<EnumCurrency>, EnumCurrency> toDateTimeFromString(String input) {
//   late EnumCurrency currency;
//   bool isStringCurrencyEnum = false;
//   for (var element in EnumCurrency.values) {
//     if (element.toShortString() == input) {
//       isStringCurrencyEnum = true;
//       currency = element;
//     }
//   }
//
//   if (isStringCurrencyEnum) {
//     return Right(currency);
//   } else {
//     return const Left(
//       ValueFailure.unknownEnum(failedValue: EnumCurrency.UNDEFINED),
//     );
//   }
// }
}
