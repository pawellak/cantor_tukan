import 'package:dartz/dartz.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:kantor_tukan/domain/core/value_converters.dart';
import 'package:kantor_tukan/domain/core/value_objects.dart';
import 'package:kantor_tukan/domain/core/value_validators.dart';

class CurrencyBill extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory CurrencyBill(double input) {
    var eitherFailureOrString = ValueValidators().currencyBill(input);
    return CurrencyBill._(eitherFailureOrString);
  }

  const CurrencyBill._(this.value);
}

class CurrencyValue extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory CurrencyValue(double input) {
    var eitherFailureOrString = ValueValidators().currencyValue(input);
    return CurrencyValue._(eitherFailureOrString);
  }

  const CurrencyValue._(this.value);
}

class CurrencyPrice extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory CurrencyPrice(double input) {
    var eitherFailureOrString = ValueValidators().currencyPrice(input);
    return CurrencyPrice._(eitherFailureOrString);
  }

  const CurrencyPrice._(this.value);
}

class Currency extends ValueObject<EnumCurrency> {
  @override
  final Either<ValueFailure<EnumCurrency>, EnumCurrency> value;

  factory Currency.fromString(String input) {
    var eitherFailureOrString = ValueConverters().toEnumCurrencyFromString(input);
    return Currency._(eitherFailureOrString);
  }

  factory Currency.fromEnum(EnumCurrency input) {
    var eitherFailureOrString = ValueValidators().currency(input);
    return Currency._(eitherFailureOrString);
  }

  const Currency._(this.value);
}

class TransactionType extends ValueObject<EnumTransactionType> {
  @override
  final Either<ValueFailure<EnumTransactionType>, EnumTransactionType> value;

  factory TransactionType.fromString(String input) {
    var eitherFailureOrString = ValueConverters().toEnumTransactionTypeFromString(input);
    return TransactionType._(eitherFailureOrString);
  }

  factory TransactionType.fromEnum(EnumTransactionType input) {
    var eitherFailureOrString = ValueValidators().transactionType(input);
    return TransactionType._(eitherFailureOrString);
  }

  const TransactionType._(this.value);
}

class TransactionStatus extends ValueObject<EnumTransactionStatus> {
  @override
  final Either<ValueFailure<EnumTransactionStatus>, EnumTransactionStatus> value;

  factory TransactionStatus.fromString(String input) {
    var eitherFailureOrString = ValueConverters().toEnumTransactionStatusFromString(input);
    return TransactionStatus._(eitherFailureOrString);
  }

  factory TransactionStatus.fromEnum(EnumTransactionStatus input) {
    var eitherFailureOrString = ValueValidators().transactionStatus(input);
    return TransactionStatus._(eitherFailureOrString);
  }

  const TransactionStatus._(this.value);
}

class DateCantor extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory DateCantor.fromDateTime(DateTime input) {
    var eitherFailureOrString = ValueValidators().dateTime(input);
    return DateCantor._(eitherFailureOrString);
  }

  const DateCantor._(this.value);
}
