import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:kantor_tukan/domain/core/value_converters.dart';

void main() {
  late ValueConverters valueConverters;

  setUp(() {
    valueConverters = ValueConverters();
  });

  group('string to double validation', () {
    test(
      'should return failure when string is empty',
      () async {
        const dataToConvert = '';
        final result = valueConverters.toStringFromDouble(dataToConvert);
        const expectedResult = Left(ValueFailure.invalidStringToDouble(failedValue: dataToConvert));

        expect(result, expectedResult);
      },
    );

    test(
      'should return failure when string is a text',
      () async {
        const dataToConvert = '123test123';
        final result = valueConverters.toStringFromDouble(dataToConvert);
        const expectedResult = Left(ValueFailure.invalidStringToDouble(failedValue: dataToConvert));

        expect(result, expectedResult);
      },
    );

    test(
      'should return double when its possible to parse string to double',
      () async {
        const dataToConvert = '  123  ';
        double expectedData = 123.0;
        final result = valueConverters.toStringFromDouble(dataToConvert);
        var expectedResult = Right(expectedData);
        expect(result, expectedResult);
      },
    );
  });
  group('enum currency', () {
    test(
      'should convert enum currency to string',
      () async {
        String expectedResult = 'EUR';
        var result = EnumCurrency.EUR.toShortString();
        expect(result, expectedResult);
      },
    );

    test(
      'should convert string to enum currency and return enum',
      () async {
        var dataToConvert = 'EUR';
        var expectResult = EnumCurrency.EUR;
        var resultFold = valueConverters.toEnumCurrencyFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );

    test(
      'should not convert string to enum currency and return value failure with undefined transaction type',
      () async {
        var dataToConvert = 'TEST';
        var expectResult = const ValueFailure.unknownEnum(failedValue: EnumCurrency.undefined);
        var resultFold = valueConverters.toEnumCurrencyFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );

    test(
      'should not parse string to enum currency and return value failure with undefined transaction type',
      () async {
        String? dataToConvert;
        var expectResult = const ValueFailure.unknownEnum(failedValue: EnumCurrency.undefined);
        var resultFold = valueConverters.toEnumCurrencyFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );
  });
  group('enum transaction type', () {
    test(
      'should convert enum transaction type to string',
      () async {
        String expectedResult = 'buy';
        var result = EnumTransactionType.buy.toShortString();
        expect(result, expectedResult);
      },
    );

    test(
      'should convert string to enum transaction type and return enum',
      () async {
        var dataToConvert = 'buy';
        var expectResult = EnumTransactionType.buy;
        var resultFold = valueConverters.toEnumTransactionTypeFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );

    test(
      'should not parse string to enum transaction type and return value failure with undefined transaction type',
      () async {
        var dataToConvert = 'TEST';
        var expectResult = const ValueFailure.unknownEnum(failedValue: EnumTransactionType.undefined);
        var resultFold = valueConverters.toEnumTransactionTypeFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );

    test(
      'should not parse string to enum transaction type and return value failure with undefined transaction type',
      () async {
        String? dataToConvert;
        var expectResult = const ValueFailure.unknownEnum(failedValue: EnumTransactionType.undefined);
        var resultFold = valueConverters.toEnumTransactionTypeFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );
  });
  group('enum transaction status', () {
    test(
      'should convert enum transaction status to string',
      () async {
        String expectedResult = 'pending';
        var result = EnumTransactionStatus.pending.toShortString();
        expect(result, expectedResult);
      },
    );

    test(
      'should convert string to enum transaction status and return enum',
      () async {
        var dataToConvert = 'pending';
        var expectResult = EnumTransactionStatus.pending;
        var resultFold = valueConverters.toEnumTransactionStatusFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );

    test(
      'should not parse string to enum transaction status and return value failure with undefined transaction type',
      () async {
        var dataToConvert = 'TEST';
        var expectResult = const ValueFailure.unknownEnum(failedValue: EnumTransactionStatus.undefined);
        var resultFold = valueConverters.toEnumTransactionStatusFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );

    test(
      'should not parse string to enum transaction status and return value failure with undefined transaction type',
      () async {
        String? dataToConvert;
        var expectResult = const ValueFailure.unknownEnum(failedValue: EnumTransactionStatus.undefined);
        var resultFold = valueConverters.toEnumTransactionStatusFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );
  });
}
