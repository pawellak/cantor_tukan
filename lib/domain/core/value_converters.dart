import 'package:dartz/dartz.dart';
import 'package:kantor_tukan/domain/core/currency.dart';
import 'package:kantor_tukan/domain/core/failures.dart';

class ValueConverters {
  Either<ValueFailure<String>, double> parseStringToDouble(String input) {
    double? currency = double.tryParse(input);

    if (currency == null) {
      return Left(ValueFailure.invalidStringToDouble(failedValue: input));
    } else {
      return Right(currency);
    }
  }

  Either<ValueFailure<EnumCurrency>, EnumCurrency> parseStringToEnumCurrency(
      String input) {
    late EnumCurrency currency;
    bool isStringCurrencyEnum = false;
    for (var element in EnumCurrency.values) {
      if (element.toShortString() == input) {
        isStringCurrencyEnum = true;
        currency = element;
      }
    }

    if (isStringCurrencyEnum) {
      return Right(currency);
    } else {
      return const Left(
        ValueFailure.unknownCurrency(failedValue: EnumCurrency.UNDEFINED),
      );
    }
  }
}
