import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/domain/core/core_constants.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/failures.dart';

import 'package:kantor_tukan/domain/currency/value_object.dart';

void main() {
  setUp(() {});

  group('currency value', () {
    test(
      'should return right result when value currency is minimum',
      () {
        var dataToConvert = CoreConstants.minValueCurrency;
        var resultFold = CurrencyValue(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = CoreConstants.minValueCurrency;
        expect(result, expectResult);
      },
    );

    test(
      'should return left value failure when value currency is to small',
      () {
        var minValue = CoreConstants.minValueCurrency;
        var dataToConvert = minValue - 1;
        var resultFold = CurrencyValue(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = ValueFailure.currencyValueTooSmall(min: minValue, failedValue: dataToConvert);
        expect(result, expectResult);
      },
    );

    test(
      'should return right result when value currency is maximum',
      () {
        var dataToConvert = CoreConstants.maxValueCurrency;
        var resultFold = CurrencyValue(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = CoreConstants.maxValueCurrency;
        expect(result, expectResult);
      },
    );
    test(
      'should return left value failure when value currency is to big',
      () {
        var maxValue = CoreConstants.maxValueCurrency;
        var dataToConvert = maxValue + 1;
        var resultFold = CurrencyValue(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = ValueFailure.currencyValueTooBig(max: maxValue, failedValue: dataToConvert);
        expect(result, expectResult);
      },
    );
  });
  group('currency', () {
    test(
      'should return right result when correct string is passed',
      () {
        String dataToConvert = 'EUR';
        var resultFold = Currency.fromString(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = EnumCurrency.EUR;
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when incorrect string is passed',
      () {
        var dataToConvert = 'TEST';
        var resultFold = Currency.fromString(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = const ValueFailure.unknownEnum(failedValue: EnumCurrency.undefined);
        expect(result, expectResult);
      },
    );

    test(
      'should return right result when enum is passed',
      () {
        var dataToConvert = EnumCurrency.EUR;
        var resultFold = Currency.fromEnum(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = dataToConvert;
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when enum undefined is passed',
      () {
        var dataToConvert = EnumCurrency.undefined;
        var resultFold = Currency.fromEnum(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = ValueFailure.unknownEnum(failedValue: dataToConvert);
        expect(result, expectResult);
      },
    );
  });
  group('transaction type', () {
    test(
      'should return right result when correct string is passed',
      () {
        String dataToConvert = 'buy';
        var resultFold = TransactionType.fromString(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = EnumTransactionType.buy;
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when incorrect string is passed',
      () {
        var dataToConvert = 'TEST';
        var resultFold = TransactionType.fromString(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = const ValueFailure.unknownEnum(failedValue: EnumTransactionType.undefined);
        expect(result, expectResult);
      },
    );

    test(
      'should return right result when enum is passed',
      () {
        var dataToConvert = EnumTransactionType.buy;
        var resultFold = TransactionType.fromEnum(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = dataToConvert;
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when enum undefined is passed',
      () {
        var dataToConvert = EnumTransactionType.undefined;
        var resultFold = TransactionType.fromEnum(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = ValueFailure.unknownEnum(failedValue: dataToConvert);
        expect(result, expectResult);
      },
    );
  });
  group('transaction status', () {
    test(
      'should return right result when correct string is passed',
      () {
        String dataToConvert = 'accepted';
        var resultFold = TransactionStatus.fromString(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = EnumTransactionStatus.accepted;
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when incorrect string is passed',
      () {
        var dataToConvert = 'TEST';
        var resultFold = TransactionStatus.fromString(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = const ValueFailure.unknownEnum(failedValue: EnumTransactionStatus.undefined);
        expect(result, expectResult);
      },
    );

    test(
      'should return right result when enum is passed',
      () {
        var dataToConvert = EnumTransactionStatus.accepted;
        var resultFold = TransactionStatus.fromEnum(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = dataToConvert;
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when enum undefined is passed',
      () {
        var dataToConvert = EnumTransactionStatus.undefined;
        var resultFold = TransactionStatus.fromEnum(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectResult = ValueFailure.unknownEnum(failedValue: dataToConvert);
        expect(result, expectResult);
      },
    );
  });
  group('date time', () {
    test(
      'should return right result when correct string is passed',
      () {
        const dataToConvert = '2022-02-10T13:54:40.1';
        var resultFold = DateCantor.fromIso8601String(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        final expectResult = DateTime(2022, 2, 10, 13, 54, 40, 100);
        expect(result, expectResult);
      },
    );

    test(
      'should return right result when correct date time is passed',
          () {
        const dataToConvert = '2022-02-10T13:54:40.1';
        var resultFold = DateCantor.fromIso8601String(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        final expectResult = DateTime(2022, 2, 10, 13, 54, 40, 100);
        expect(result, expectResult);
      },
    );


    test(
      'should return left result when incorrect string is passed',
      () {
        const dataToConvert = '2022-02-1013:54:40.1';
        var resultFold = DateCantor.fromIso8601String(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        final expectResult = ValueFailure.invalidDate(failedValue: DateTime(0));
        expect(result, expectResult);
      },
    );

    test(
      'should return right result when correct date time is passed',
          () {
        final date = DateTime.now();
        var resultFold = DateCantor.fromDateTime(date);
        var result = resultFold.value.fold((l) => l, (r) => r);
        final expectResult = date;
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when date time before minPossiblyYearData -1',
          () {
        const minDate = CoreConstants.minPossiblyYearData;
        final date = DateTime(minDate-1);
        var resultFold = DateCantor.fromDateTime(date);
        var result = resultFold.value.fold((l) => l, (r) => r);
        final expectResult = ValueFailure.invalidDate(failedValue: date);
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when date time is UTC',
          () {
        final date = DateTime.now().toUtc();
        var resultFold = DateCantor.fromDateTime(date);
        var result = resultFold.value.fold((l) => l, (r) => r);
        final expectResult = ValueFailure.dateIsUTC(failedValue: date);
        expect(result, expectResult);
      },
    );
  });
}
