import 'package:dartz/dartz.dart';
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
      () async {
        var dataToConvert = CoreConstants.minValueCurrency;
        var resultFold = CurrencyValue(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectedResult = CoreConstants.minValueCurrency;
        expect(result, expectedResult);
      },
    );

    test(
      'should return left value failure when value currency is to small',
      () async {
        var minValue = CoreConstants.minValueCurrency;
        var dataToConvert = minValue - 1;
        var resultFold = CurrencyValue(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectedResult = ValueFailure.currencyValueTooSmall(min: minValue, failedValue: dataToConvert);
        expect(result, expectedResult);
      },
    );

    test(
      'should return right result when value currency is maximum',
      () async {
        var dataToConvert = CoreConstants.maxValueCurrency;
        var resultFold = CurrencyValue(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectedResult = CoreConstants.maxValueCurrency;
        expect(result, expectedResult);
      },
    );
    test(
      'should return left value failure when value currency is to big',
      () async {
        var maxValue = CoreConstants.maxValueCurrency;
        var dataToConvert = maxValue + 1;
        var resultFold = CurrencyValue(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectedResult = ValueFailure.currencyValueTooBig(max: maxValue, failedValue: dataToConvert);
        expect(result, expectedResult);
      },
    );
  });
  group('currency', () {
    test(
      'should return right result when correct string is passed',
      () async {
        String dataToConvert = 'EUR';
        var resultFold = Currency.fromString(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectedResult = EnumCurrency.EUR;
        expect(result, expectedResult);
      },
    );

    test(
      'should return left result when incorrect string is passed',
      () async {
        var dataToConvert = 'TEST';
        var resultFold = Currency.fromString(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectedResult = const ValueFailure.unknownEnum(failedValue: EnumCurrency.undefined);
        expect(result, expectedResult);
      },
    );

    test(
      'should return right result when enum is passed',
          () async {
        var dataToConvert = EnumCurrency.EUR;
        var resultFold = Currency.fromEnum(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectedResult = dataToConvert;
        expect(result, expectedResult);
      },
    );

    test(
      'should return left result when enum undefined is passed',
          () async {
        var dataToConvert = EnumCurrency.undefined;
        var resultFold = Currency.fromEnum(dataToConvert);
        var result = resultFold.value.fold((l) => l, (r) => r);
        var expectedResult = ValueFailure.unknownEnum(failedValue: dataToConvert);
        expect(result, expectedResult);
      },
    );
  });
}
