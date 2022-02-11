import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/domain/core/enums.dart';

void main() {
  setUp(() {});

  group('Enum transaction type', () {
    test(
      'should parse enum to string',
      () {
        final result = EnumTransactionType.buy.toShortString();
        const expectedResult = 'buy';
        expect(result, expectedResult);
      },
    );

    test(
      'should convert string to enum',
      () {
        const convertedData = 'buy';
        final result = EnumTransactionType.values.toEnumFromString(convertedData);
        const expectedResult = EnumTransactionType.buy;
        expect(result, expectedResult);
      },
    );
  });
  group('Enum transaction status', () {
    test(
      'should convert enum to string',
      () {
        final result = EnumTransactionStatus.accepted.toShortString();
        const expectedResult = 'accepted';
        expect(result, expectedResult);
      },
    );

    test(
      'should convert string to enum',
          () {
        const convertedData = 'pending';
        final result = EnumTransactionStatus.values.toEnumFromString(convertedData);
        const expectedResult = EnumTransactionStatus.pending;
        expect(result, expectedResult);
      },
    );

    test(
      'should convert string to enum',
      () {
        const convertedData = 'accepted';
        final result = EnumTransactionStatus.values.toEnumFromString(convertedData);
        const expectedResult = EnumTransactionStatus.accepted;
        expect(result, expectedResult);
      },
    );
  });
  group('Enum currency',() {
      test(
        'should parse enum to string',
        () {
          final result = EnumCurrency.EUR.toShortString();
          const expectedResult = 'EUR';
          expect(result, expectedResult);
        },
      );

      test(
        'should convert string to enum',
        () {
          const convertedData = 'EUR';
          final result = EnumCurrency.values.toEnumFromString(convertedData);
          const expectedResult = EnumCurrency.EUR;
          expect(result, expectedResult);
        },
      );
    },);
}
