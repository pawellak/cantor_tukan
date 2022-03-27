// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'exchange_rate_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************



Map<String, dynamic> _$ExchangeRateDtoToJson(ExchangeRateDto instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'priceBuy': instance.priceBuy,
      'priceSell': instance.priceSell,
    };

_$_ExchangeRateDto _$$_ExchangeRateDtoFromJson(Map<String, dynamic> json) =>
    _$_ExchangeRateDto(
      currency: json['currency'] as String,
      priceBuy: (json['priceBuy'] as num).toDouble(),
      priceSell: (json['priceSell'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ExchangeRateDtoToJson(_$_ExchangeRateDto instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'priceBuy': instance.priceBuy,
      'priceSell': instance.priceSell,
    };
