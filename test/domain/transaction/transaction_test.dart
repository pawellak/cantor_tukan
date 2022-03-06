import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/value_objects.dart';
import 'package:kantor_tukan/domain/transaction/transaction.dart';
import 'package:kantor_tukan/domain/core/currency_value.dart';

void main() {
  setUp(() {});

  test('should return some object when transaction class is empty', () {
      final Transaction transaction;
      transaction = Transaction.empty();
      final isFailureOption = transaction.failureOption;
      final result = isFailureOption.fold(() => false, (f) => true);
      const expectedResult = true;
      expect(result, expectedResult);
    },);
  test('should return some object when at least one properties is invalid - invalid currency',() {
      final Transaction transaction;
      transaction = Transaction(
        uId: UniqueId(),
        currency: Currency.fromEnum(EnumCurrency.undefined),
        transactionType: TransactionType.fromEnum(EnumTransactionType.buy),
        transactionStatus: TransactionStatus.fromEnum(EnumTransactionStatus.pending),
        dateAcceptation: DateCantor.fromDateTime(DateTime.now()),
        dateReservation: DateCantor.fromDateTime(DateTime.now()),
        currencyValue: CurrencyValue(100),
        currencyBill: CurrencyBill(200),
        priceBuy: CurrencyPrice(2),
        priceSell: CurrencyPrice(2),
      );
      final isFailureOption = transaction.failureOption;
      final result = isFailureOption.fold(() => false, (f) => true);
      const expectedResult = true;
      expect(result, expectedResult);
    },);
  test('should return some object when at least one properties is invalid - invalid currency value',() {
      final Transaction transaction;
      transaction = Transaction(
        uId: UniqueId(),
        currency: Currency.fromEnum(EnumCurrency.EUR),
        transactionType: TransactionType.fromEnum(EnumTransactionType.buy),
        transactionStatus: TransactionStatus.fromEnum(EnumTransactionStatus.pending),
        dateAcceptation: DateCantor.fromDateTime(DateTime.now()),
        dateReservation: DateCantor.fromDateTime(DateTime.now()),
        currencyValue: CurrencyValue(0),
        currencyBill: CurrencyBill(200),
        priceBuy: CurrencyPrice(2),
        priceSell: CurrencyPrice(2),
      );
      final isFailureOption = transaction.failureOption;
      final result = isFailureOption.fold(() => false, (f) => true);
      const expectedResult = true;
      expect(result, expectedResult);
    },);
  test('should return some object when at least one properties is invalid - invalid currency price',() {
      final Transaction transaction;
      transaction = Transaction(
        uId: UniqueId(),
        currency: Currency.fromEnum(EnumCurrency.EUR),
        transactionType: TransactionType.fromEnum(EnumTransactionType.buy),
        transactionStatus: TransactionStatus.fromEnum(EnumTransactionStatus.pending),
        dateAcceptation: DateCantor.fromDateTime(DateTime.now()),
        dateReservation: DateCantor.fromDateTime(DateTime.now()),
        currencyValue: CurrencyValue(200),
        currencyBill: CurrencyBill(200),
        priceBuy: CurrencyPrice(0),
        priceSell: CurrencyPrice(2),
      );
      final isFailureOption = transaction.failureOption;
      final result = isFailureOption.fold(() => false, (f) => true);
      const expectedResult = true;
      expect(result, expectedResult);
    },);
  test('should return some object when at least one properties is invalid - invalid date',() {
    final Transaction transaction;
    transaction = Transaction(
      uId: UniqueId(),
      currency: Currency.fromEnum(EnumCurrency.EUR),
      transactionType: TransactionType.fromEnum(EnumTransactionType.buy),
      transactionStatus: TransactionStatus.fromEnum(EnumTransactionStatus.pending),
      dateAcceptation: DateCantor.fromDateTime(DateTime(1970)),
      dateReservation: DateCantor.fromDateTime(DateTime.now()),
      currencyValue: CurrencyValue(100),
      currencyBill: CurrencyBill(200),
      priceBuy: CurrencyPrice(2),
      priceSell: CurrencyPrice(2),
    );
    final isFailureOption = transaction.failureOption;
    final result = isFailureOption.fold(() => false, (f) => true);
    const expectedResult = true;
    expect(result, expectedResult);
  },);
  test('should return none when object is initialized correctly',() {
      final Transaction transaction;
      transaction = Transaction(
        uId: UniqueId(),
        currency: Currency.fromEnum(EnumCurrency.EUR),
        transactionType: TransactionType.fromEnum(EnumTransactionType.buy),
        transactionStatus: TransactionStatus.fromEnum(EnumTransactionStatus.pending),
        dateAcceptation: DateCantor.fromDateTime(DateTime.now()),
        dateReservation: DateCantor.fromDateTime(DateTime.now()),
        currencyValue: CurrencyValue(100),
        currencyBill: CurrencyBill(200),
        priceBuy: CurrencyPrice(2),
        priceSell: CurrencyPrice(2),
      );
      final isFailureOption = transaction.failureOption;
      final result = isFailureOption.fold(() => false, (f) => true);
      const expectedResult = false;
      expect(result, expectedResult);
    },);
}
