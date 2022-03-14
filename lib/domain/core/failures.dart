import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.unknownEnum({
    required T failedValue,
  }) = UnknownCurrency<T>;

  const factory ValueFailure.currencyValueTooBig({
    required double max,
    required T failedValue,
  }) = CurrencyTooBig<T>;

  const factory ValueFailure.currencyValueTooSmall({
    required double min,
    required T failedValue,
  }) = CurrencyTooSmall<T>;

  const factory ValueFailure.passwordsNotEqual({
    required T failedValue,
  }) = PasswordsNotEqual<T>;

  const factory ValueFailure.currencyValueNotInteger({
    required T failedValue,
  }) = CurrencyValueNotInteger<T>;

  const factory ValueFailure.currencyPriceTooBig({
    required double max,
    required T failedValue,
  }) = CurrencyPriceTooBig<T>;

  const factory ValueFailure.currencyPriceTooSmall({
    required T failedValue,
  }) = CurrencyPriceTooSmall<T>;

  const factory ValueFailure.invalidStringToDouble({
    required T failedValue,
  }) = InvalidStringToDouble<T>;

  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.invalidDate({
    required T failedValue,
  }) = InvalidDate<T>;

  const factory ValueFailure.dateIsUTC({
    required T failedValue,
  }) = DateIsUTC<T>;
}
