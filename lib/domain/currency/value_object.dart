import 'package:dartz/dartz.dart';
import 'package:kantor_tukan/domain/core/currency.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:kantor_tukan/domain/core/value_converters.dart';
import 'package:kantor_tukan/domain/core/value_objects.dart';
import 'package:kantor_tukan/domain/core/value_validators.dart';

class CurrencyValue extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory CurrencyValue(double input) {
    var eitherFailureOrString = ValueValidators().validateCurrencyValue(input);
    return CurrencyValue._(eitherFailureOrString);
  }

  const CurrencyValue._(this.value);
}

class Currency extends ValueObject<EnumCurrency> {
  @override
  final Either<ValueFailure<EnumCurrency>, EnumCurrency> value;

  factory Currency(String input) {
    var eitherFailureOrString =
        ValueConverters().parseStringToEnumCurrency(input);
    return Currency._(eitherFailureOrString);
  }

  const Currency._(this.value);
}

enum TypeOfTransaction { buy, sell }
