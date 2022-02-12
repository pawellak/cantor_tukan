import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:kantor_tukan/domain/core/value_objects.dart';
import 'package:kantor_tukan/domain/transaction/value_object.dart';

part 'transaction.freezed.dart';

@freezed
abstract class Transaction implements _$Transaction {
  const Transaction._();

  const factory Transaction({
    required UniqueId uId,
    required Currency currency,
    required TransactionType transactionType,
    required TransactionStatus transactionStatus,
    required DateCantor dateAcceptation,
    required DateCantor dateReservation,
    required CurrencyValue currencyValue,
    required CurrencyValue currencyBill,
    required CurrencyPrice priceBuy,
    required CurrencyPrice priceSell,
  }) = _Transaction;

  factory Transaction.empty() => Transaction(
      uId: UniqueId(),
      currency: Currency.fromEnum(EnumCurrency.undefined),
      transactionType: TransactionType.fromEnum(EnumTransactionType.undefined),
      transactionStatus: TransactionStatus.fromEnum(EnumTransactionStatus.undefined),
      dateAcceptation: DateCantor.fromDateTime(DateTime(0)),
      dateReservation: DateCantor.fromDateTime(DateTime(0)),
      currencyValue: CurrencyValue(0),
      currencyBill: CurrencyValue(0),
      priceBuy: CurrencyPrice(0),
      priceSell: CurrencyPrice(0));

  Option<ValueFailure<dynamic>> get failureOption {
    return currency.failureOrUnit
        .andThen(transactionType.failureOrUnit)
        .andThen(transactionStatus.failureOrUnit)
        .andThen(dateAcceptation.failureOrUnit)
        .andThen(dateReservation.failureOrUnit)
        .andThen(currencyValue.failureOrUnit)
        .andThen(currencyBill.failureOrUnit)
        .andThen(priceBuy.failureOrUnit)
        .andThen(priceSell.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }
}
