import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';


@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {



  const factory ValueFailure.unknownCurrency({
    required T failedValue,
  }) = UnknownCurrency<T>;


  const factory ValueFailure.currencyTooBig({
    required double max,
    required T failedValue,
  }) = CurrencyTooBig<T>;

  const factory ValueFailure.currencyTooSmall({
    required double min,
    required T failedValue,
  }) = CurrencyTooSmall<T>;

  const factory ValueFailure.invalidStringToDouble({
    required T failedValue,
  }) = InvalidStringToDouble<T>;

  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
}