import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/value_objects.dart';
import 'package:kantor_tukan/domain/transaction/transaction.dart';
import 'package:kantor_tukan/domain/core/currency_value.dart';
import 'package:kantor_tukan/infrastructure/transaction/transaction_dtos.dart';

void main() {
  late Transaction transaction;
  late TransactionDto transactionDto;
  late Transaction reTransaction;
  late Map<String, dynamic> transactionJson;

  setUpAll(() {
    transaction = Transaction(
      uId: UniqueId.fromUniqueString('1234'),
      currency: Currency.fromEnum(EnumCurrency.EUR),
      transactionType: TransactionType.fromEnum(EnumTransactionType.buy),
      transactionStatus: TransactionStatus.fromEnum(EnumTransactionStatus.pending),
      dateAcceptation: DateCantor.fromDateTime(DateTime(2022)),
      dateReservation: DateCantor.fromDateTime(DateTime(2022)),
      currencyValue: CurrencyValue(100),
      currencyBill: CurrencyBill(200),
      priceBuy: CurrencyPrice(2),
      priceSell: CurrencyPrice(2),
    );
    transactionDto = TransactionDto.fromDomain(transaction);
    reTransaction = transactionDto.toDomain();
    transactionJson = {
      'uid': '1234',
      'currency': 'EUR',
      'transactionType': 'buy',
      'transactionStatus': 'pending',
      'dateAcceptation': '2022-01-01T00:00:00.000',
      'dateReservation': '2022-01-01T00:00:00.000',
      'currencyValue': 100.0,
      'currencyBill': 200.0,
      'priceBuy': 2.0,
      'priceSell': 2.0
    };
  });

  group('should properties be correct after convert into DTO object', () {
    test(
      'uid',
      () {
        final result = transactionDto.uid;
        const expectedResult = '1234';
        expect(result, expectedResult);
      },
    );
    test(
      'currency ',
      () {
        final result = transactionDto.currency;
        const expectedResult = 'EUR';
        expect(result, expectedResult);
      },
    );
    test(
      'transactionType',
      () {
        final result = transactionDto.transactionType;
        const expectedResult = 'buy';
        expect(result, expectedResult);
      },
    );
    test(
      'transactionStatus',
      () {
        final result = transactionDto.transactionStatus;
        const expectedResult = 'pending';
        expect(result, expectedResult);
      },
    );
    test(
      'dateAcceptation',
      () {
        final result = transactionDto.dateAcceptation;
        final expectedResult = DateTime(2022);
        expect(result, expectedResult);
      },
    );
    test(
      'dateReservation',
      () {
        final result = transactionDto.dateReservation;
        final expectedResult = DateTime(2022);
        expect(result, expectedResult);
      },
    );
    test(
      'currencyValue',
      () {
        final result = transactionDto.currencyValue;
        const expectedResult = 100.0;
        expect(result, expectedResult);
      },
    );
    test(
      'currencyBill',
      () {
        final result = transactionDto.currencyBill;
        const expectedResult = 200.0;
        expect(result, expectedResult);
      },
    );
    test(
      'should priceBuy be correct after convert into DTO object',
      () {
        final result = transactionDto.priceBuy;
        const expectedResult = 2.0;
        expect(result, expectedResult);
      },
    );
    test(
      'should priceSell be correct after convert into DTO object',
      () {
        final result = transactionDto.priceSell;
        const expectedResult = 2.0;
        expect(result, expectedResult);
      },
    );
  });
  group('should transaction class be correct after reconverting', () {
    test('equatable', () {
      final result = transaction;
      final expectResult = reTransaction;
      expect(result, expectResult);
    });
    test('uid', () {
      final result = transaction.uId;
      final expectResult = reTransaction.uId;
      expect(result, expectResult);
    });
    test('currency', () {
      final result = transaction.currency;
      final expectResult = reTransaction.currency;
      expect(result, expectResult);
    });
    test('transactionType', () {
      final result = transaction.transactionType;
      final expectResult = reTransaction.transactionType;
      expect(result, expectResult);
    });
    test('transactionStatus', () {
      final result = transaction.transactionStatus;
      final expectResult = reTransaction.transactionStatus;
      expect(result, expectResult);
    });
    test('dateAcceptation', () {
      final result = transaction.dateAcceptation;
      final expectResult = reTransaction.dateAcceptation;
      expect(result, expectResult);
    });
    test('dateReservation', () {
      final result = transaction.dateReservation;
      final expectResult = reTransaction.dateReservation;
      expect(result, expectResult);
    });
    test('currencyValue', () {
      final result = transaction.currencyValue;
      final expectResult = reTransaction.currencyValue;
      expect(result, expectResult);
    });
    test('currencyBill', () {
      final result = transaction.currencyBill;
      final expectResult = reTransaction.currencyBill;
      expect(result, expectResult);
    });
    test('priceBuy', () {
      final result = transaction.priceBuy;
      final expectResult = reTransaction.priceBuy;
      expect(result, expectResult);
    });
    test('priceSell', () {
      final result = transaction.priceSell;
      final expectResult = reTransaction.priceSell;
      expect(result, expectResult);
    });
  });
  group('ToJson convert data', () {
    test('should transaction dto be converted to json correct', () {
      final result = transactionDto.toJson();
      final expectedResult = transactionJson;
      expect(result, expectedResult);
    });
  });
  group('FromJson convert data', () {
    test('should transaction dto be created from Json', () {
      final result = TransactionDto.fromJson(transactionJson);
      final expectedResult = transactionDto;
      expect(result, expectedResult);
    });
  });
}
