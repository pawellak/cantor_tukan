import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/domain/core/core_constants.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:kantor_tukan/domain/core/currency_value.dart';

void main() {
  group('currency value', () {
    test(
      'should return right result when value currency is minimum',
      () {
        const dataToConvert = CoreConstants.minValueCurrency;
        final resultFold = CurrencyValue(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = CoreConstants.minValueCurrency;
        expect(result, expectResult);
      },
    );

    test(
      'should return left value failure when value currency is to small',
      () {
        const minValue = CoreConstants.minValueCurrency;
        const dataToConvert = minValue - 1;
        final resultFold = CurrencyValue(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = ValueFailure.currencyValueTooSmall(min: minValue, failedValue: dataToConvert);
        expect(result, expectResult);
      },
    );

    test(
      'should return right result when value currency is maximum',
      () {
        const dataToConvert = CoreConstants.maxValueCurrency;
        final resultFold = CurrencyValue(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = CoreConstants.maxValueCurrency;
        expect(result, expectResult);
      },
    );
    test(
      'should return left value failure when value currency is to big',
      () {
        const maxValue = CoreConstants.maxValueCurrency;
        const dataToConvert = maxValue + 1;
        final resultFold = CurrencyValue(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = ValueFailure.currencyValueTooBig(max: maxValue, failedValue: dataToConvert);
        expect(result, expectResult);
      },
    );
  });
  group('currency price', () {
    test(
      'should return left result when value price is below 0',
      () {
        const dataToConvert = -0.1;
        final resultFold = CurrencyPrice(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = ValueFailure.currencyPriceTooSmall(failedValue: dataToConvert);
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when value price is equal 0',
      () {
        const dataToConvert = 0.0;
        final resultFold = CurrencyPrice(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = ValueFailure.currencyPriceTooSmall(failedValue: dataToConvert);
        expect(result, expectResult);
      },
    );

    test(
      'should return right result when value price is maximum',
      () {
        const dataToConvert = CoreConstants.maxCurrencyPriceNumbers;
        final resultFold = CurrencyPrice(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = dataToConvert;
        expect(result, expectResult);
      },
    );

    test(
      'should max price - min price be bigger than 0',
      () {
        const dataToConvert = CoreConstants.maxCurrencyPriceNumbers - CoreConstants.minCurrencyPriceNumbers;
        const result = dataToConvert > 0;
        const expectResult = true;
        expect(result, expectResult);
      },
    );

    test(
      'should return left value failure when value price is to big',
      () {
        const maxValue = CoreConstants.maxCurrencyPriceNumbers;
        const dataToConvert = maxValue + 1;
        final resultFold = CurrencyPrice(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = ValueFailure.currencyPriceTooBig(max: maxValue, failedValue: dataToConvert);
        expect(result, expectResult);
      },
    );
  });
  group('currency', () {
    test(
      'should return right result when correct string is passed',
      () {
        const dataToConvert = 'EUR';
        final resultFold = Currency.fromString(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = EnumCurrency.EUR;
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when incorrect string is passed',
      () {
        const dataToConvert = 'TEST';
        final resultFold = Currency.fromString(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = ValueFailure.unknownEnum(failedValue: EnumCurrency.undefined);
        expect(result, expectResult);
      },
    );

    test(
      'should return right result when enum is passed',
      () {
        const dataToConvert = EnumCurrency.EUR;
        final resultFold = Currency.fromEnum(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = dataToConvert;
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when enum undefined is passed',
      () {
        const dataToConvert = EnumCurrency.undefined;
        final resultFold = Currency.fromEnum(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = ValueFailure.unknownEnum(failedValue: dataToConvert);
        expect(result, expectResult);
      },
    );

    test(
      'should convert enum currency into string',
          () {
        const expectResult = 'EUR';
        const dataToConvert = EnumCurrency.EUR;
        final result = dataToConvert.toShortString();
        expect(result, expectResult);
      },
    );
  });
  group('transaction type', () {
    test(
      'should return right result when correct string is passed',
      () {
        const dataToConvert = 'buy';
        final resultFold = TransactionType.fromString(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = EnumTransactionType.buy;
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when incorrect string is passed',
      () {
        const dataToConvert = 'TEST';
        final resultFold = TransactionType.fromString(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = ValueFailure.unknownEnum(failedValue: EnumTransactionType.undefined);
        expect(result, expectResult);
      },
    );

    test(
      'should return right result when enum is passed',
      () {
        const dataToConvert = EnumTransactionType.buy;
        final resultFold = TransactionType.fromEnum(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = dataToConvert;
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when enum undefined is passed',
      () {
        const dataToConvert = EnumTransactionType.undefined;
        final resultFold = TransactionType.fromEnum(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = ValueFailure.unknownEnum(failedValue: dataToConvert);
        expect(result, expectResult);
      },
    );
  });
  group('transaction status', () {
    test(
      'should return right result when correct string is passed',
      () {
        const dataToConvert = 'accepted';
        final resultFold = TransactionStatus.fromString(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = EnumTransactionStatus.accepted;
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when incorrect string is passed',
      () {
        const dataToConvert = 'TEST';
        final resultFold = TransactionStatus.fromString(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = ValueFailure.unknownEnum(failedValue: EnumTransactionStatus.undefined);
        expect(result, expectResult);
      },
    );

    test(
      'should return right result when enum is passed',
      () {
        const dataToConvert = EnumTransactionStatus.accepted;
        final resultFold = TransactionStatus.fromEnum(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = dataToConvert;
        expect(result, expectResult);
      },
    );

    test(
      'should return left result when enum undefined is passed',
      () {
        const dataToConvert = EnumTransactionStatus.undefined;
        final resultFold = TransactionStatus.fromEnum(dataToConvert);
        final result = resultFold.value.fold((l) => l, (r) => r);
        const expectResult = ValueFailure.unknownEnum(failedValue: dataToConvert);
        expect(result, expectResult);
      },
    );
  });
  group('date time', () {

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
        final date = DateTime(minDate - 1);
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
