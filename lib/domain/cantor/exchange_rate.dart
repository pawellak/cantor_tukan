import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/currency_value.dart';
import 'package:kantor_tukan/domain/core/failures.dart';

part 'exchange_rate.freezed.dart';

@freezed
abstract class ExchangeRate implements _$ExchangeRate {
  const ExchangeRate._();

  const factory ExchangeRate({
    required Currency currency,
    required CurrencyPrice priceBuy,
    required CurrencyPrice priceSell,
  }) = _ExchangeRate;

  factory ExchangeRate.empty() => ExchangeRate(
        currency: Currency.fromEnum(EnumCurrency.undefined),
        priceBuy: CurrencyPrice(0),
        priceSell: CurrencyPrice(0),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return currency.failureOrUnit
        .andThen(priceBuy.failureOrUnit)
        .andThen(priceSell.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }
}
