import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';


@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.currencyTooBig({
    required double max,
    required T failedValue,
  }) = CurrencyTooBig<T>;

  const factory ValueFailure.currencyTooSmall({
    required double min,
    required T failedValue,
  }) = CurrencyTooSmall<T>;

  const factory ValueFailure.currencyEmpty({
    required T failedValue,
  }) = CurrencyEmpty<T>;

  const factory ValueFailure.currencyTooMuch({
    required T failedValue,
  }) = CurrencyTooMuch<T>;

  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
}