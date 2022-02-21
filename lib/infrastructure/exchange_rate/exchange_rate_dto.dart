import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/domain/core/currency_value.dart';

part 'exchange_rate_dto.freezed.dart';

part 'exchange_rate_dto.g.dart';

@JsonSerializable()
@freezed
abstract class ExchangeRateDto with _$ExchangeRateDto {
  const ExchangeRateDto._();

  const factory ExchangeRateDto({
    required String currency,
    required double priceBuy,
    required double priceSell,
  }) = _ExchangeRateDto;

  ExchangeRate toDomain() {
    return ExchangeRate(
      currency: Currency.fromString(currency),
      priceBuy: CurrencyPrice(priceBuy),
      priceSell: CurrencyPrice(priceSell),
    );
  }

  /// Connect the generated [_$ExchangeRateDtoFromJson] function to the `fromJson`
  /// factory.
  factory ExchangeRateDto.fromJson(Map<String, dynamic> json) => _$ExchangeRateDtoFromJson(json);

  /// Connect the generated [_$ExchangeRateDtoToJson] function to the `toJson` method.
  @override
  Map<String, dynamic> toJson() => _$ExchangeRateDtoToJson(this);
}
