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
      () {
        const dataToConvert = '';
        final result = valueConverters.toDoubleFromString(dataToConvert);
        const expectedResult = Left(ValueFailure.invalidStringToDouble(failedValue: dataToConvert));

        expect(result, expectedResult);
      },
    );

    test(
      'should return failure when string is a text',
      () {
        const dataToConvert = '123test123';
        final result = valueConverters.toDoubleFromString(dataToConvert);
        const expectedResult = Left(ValueFailure.invalidStringToDouble(failedValue: dataToConvert));

        expect(result, expectedResult);
      },
    );

    test(
      'should return double when its possible to parse string to double',
      () {
        const dataToConvert = '  123  ';
        double expectedData = 123.0;
        final result = valueConverters.toDoubleFromString(dataToConvert);
        var expectedResult = Right(expectedData);
        expect(result, expectedResult);
      },
    );
  });
  group('enum currency', () {
    test(
      'should convert enum currency to string',
      () {
        String expectedResult = 'EUR';
        var result = EnumCurrency.EUR.toShortString();
        expect(result, expectedResult);
      },
    );

    test(
      'should convert string to enum currency and return enum',
      () {
        var dataToConvert = 'EUR';
        var expectResult = EnumCurrency.EUR;
        var resultFold = valueConverters.toEnumCurrencyFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );

    test(
      'should not convert string to enum currency and return value failure with undefined transaction type',
      () {
        var dataToConvert = 'TEST';
        var expectResult = const ValueFailure.unknownEnum(failedValue: EnumCurrency.undefined);
        var resultFold = valueConverters.toEnumCurrencyFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );

    test(
      'should not parse string to enum currency and return value failure with undefined transaction type',
      () {
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
      () {
        String expectedResult = 'buy';
        var result = EnumTransactionType.buy.toShortString();
        expect(result, expectedResult);
      },
    );

    test(
      'should convert string to enum transaction type and return enum',
      () {
        var dataToConvert = 'buy';
        var expectResult = EnumTransactionType.buy;
        var resultFold = valueConverters.toEnumTransactionTypeFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );

    test(
      'should not parse string to enum transaction type and return value failure with undefined transaction type',
      () {
        var dataToConvert = 'TEST';
        var expectResult = const ValueFailure.unknownEnum(failedValue: EnumTransactionType.undefined);
        var resultFold = valueConverters.toEnumTransactionTypeFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );

    test(
      'should not parse string to enum transaction type and return value failure with undefined transaction type',
      () {
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
      () {
        String expectedResult = 'pending';
        var result = EnumTransactionStatus.pending.toShortString();
        expect(result, expectedResult);
      },
    );

    test(
      'should convert string to enum transaction status and return enum',
      () {
        String dataToConvert = 'pending';
        EnumTransactionStatus expectResult = EnumTransactionStatus.pending;
        final resultFold = valueConverters.toEnumTransactionStatusFromString(dataToConvert);
        final result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );

    test(
      'should not parse string to enum transaction status and return value failure with undefined transaction type',
      () {
        var dataToConvert = 'TEST';
        var expectResult = const ValueFailure.unknownEnum(failedValue: EnumTransactionStatus.undefined);
        var resultFold = valueConverters.toEnumTransactionStatusFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );

    test(
      'should not parse string to enum transaction status and return value failure with undefined transaction type',
      () {
        String? dataToConvert;
        var expectResult = const ValueFailure.unknownEnum(failedValue: EnumTransactionStatus.undefined);
        var resultFold = valueConverters.toEnumTransactionStatusFromString(dataToConvert);
        var result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectResult);
      },
    );
  });
  group('date time', () {


    test(
      'should convert date time into Date time without ms',
          () {
        final dataConverted = DateTime(2022, 2, 10, 13, 54, 40, 100);
        final resultFold = valueConverters.toDailyTimeStringFromDateTime(dataConverted);
        final result = resultFold.fold((l) => l, (r) => r);
        const expectedResult = '10/02/2022 13:54:40';
        expect(result, expectedResult);
      },
    );

    test(
      'should convert Iso8601String into Date time',
      () {
        const dataToConvert = '2022-02-10T13:54:40.1';
        final expectedResult = DateTime(2022, 2, 10, 13, 54, 40, 100);
        final resultFold = valueConverters.toDateTimeFromIso8601String(dataToConvert);
        final result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectedResult);
      },
    );

    test(
      'should convert Iso8601String into Date time',
      () {
        const dataToConvert = '2022-02-10T13:54';
        final expectedResult = DateTime(2022, 2, 10, 13, 54);
        final resultFold = valueConverters.toDateTimeFromIso8601String(dataToConvert);
        final result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectedResult);
      },
    );

    test(
      'should convert Iso8601String into Date time',
      () {
        const dataToConvert = '2022-02-10';
        final expectedResult = DateTime(2022, 2, 10);
        final resultFold = valueConverters.toDateTimeFromIso8601String(dataToConvert);
        final result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectedResult);
      },
    );

    test(
      'should not convert string into Date time',
      () {
        const dataToConvert = 'TEST';
        final expectedResult = ValueFailure.invalidDate(failedValue: DateTime(0));
        final resultFold = valueConverters.toDateTimeFromIso8601String(dataToConvert);
        final result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectedResult);
      },
    );

    test(
      'should not convert string into Date time',
      () {
        const dataToConvert = '2022-02-10T13:54TEST';
        final expectedResult = ValueFailure.invalidDate(failedValue: DateTime(0));
        final resultFold = valueConverters.toDateTimeFromIso8601String(dataToConvert);
        final result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectedResult);
      },
    );

    test(
      'should convert date time into daily date time string',
          () {
        final dataToConvert = DateTime(2022,02,22);
        const expectedResult = '22/02/2022';
        final resultFold = valueConverters.toDailyDateStringFromDateTime(dataToConvert);
        final result = resultFold.fold((l) => l, (r) => r);
        expect(result, expectedResult);
      },
    );
  });
}
