// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************


Map<String, dynamic> _$TransactionDtoToJson(TransactionDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'currency': instance.currency,
      'transactionType': instance.transactionType,
      'transactionStatus': instance.transactionStatus,
      'dateAcceptation': instance.dateAcceptation,
      'dateReservation': instance.dateReservation,
      'currencyValue': instance.currencyValue,
      'currencyBill': instance.currencyBill,
      'priceBuy': instance.priceBuy,
      'priceSell': instance.priceSell,
    };

_$_TransactionDto _$$_TransactionDtoFromJson(Map<String, dynamic> json) =>
    _$_TransactionDto(
      uid: json['uid'] as String?,
      currency: json['currency'] as String,
      transactionType: json['transactionType'] as String,
      transactionStatus: json['transactionStatus'] as String,
      dateAcceptation: json['dateAcceptation'] as String,
      dateReservation: json['dateReservation'] as String,
      currencyValue: (json['currencyValue'] as num).toDouble(),
      currencyBill: (json['currencyBill'] as num).toDouble(),
      priceBuy: (json['priceBuy'] as num).toDouble(),
      priceSell: (json['priceSell'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TransactionDtoToJson(_$_TransactionDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'currency': instance.currency,
      'transactionType': instance.transactionType,
      'transactionStatus': instance.transactionStatus,
      'dateAcceptation': instance.dateAcceptation,
      'dateReservation': instance.dateReservation,
      'currencyValue': instance.currencyValue,
      'currencyBill': instance.currencyBill,
      'priceBuy': instance.priceBuy,
      'priceSell': instance.priceSell,
    };
