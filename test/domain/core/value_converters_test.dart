import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/domain/core/currency.dart';
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
        const currencyValue = '';
        final result = valueConverters.parseStringToDouble(currencyValue);
        const failureCurrency = Left(
            ValueFailure.invalidStringToDouble(failedValue: currencyValue));

        expect(result, failureCurrency);
      },
    );

    test(
      'should return failure when string is a text',
      () async {
        const currencyValue = '123test123';
        final result = valueConverters.parseStringToDouble(currencyValue);
        const failureCurrency = Left(
            ValueFailure.invalidStringToDouble(failedValue: currencyValue));

        expect(result, failureCurrency);
      },
    );

    test(
      'should return double when its possible to parse string to double',
      () async {
        const currencyValue = '  123  ';
        double doubleValue = 123.0;
        final result = valueConverters.parseStringToDouble(currencyValue);
        var correctCurrency = Right(doubleValue);
        expect(result, correctCurrency);
      },
    );
  });

  group('enum currency to string', () {
    test(
      'should correct parse enum currency to string',
      () async {
        String euroString = 'EUR';

        var euroEnum = EnumCurrency.EUR;
        String parsedEuroString = euroEnum.toShortString();

        expect(euroString, parsedEuroString);
      },
    );
  });

  group('string to enum currency', () {
    test(
      'should convert string to enum currency and return right',
      () async {
        String euroString = 'EUR';
        EnumCurrency currency = EnumCurrency.EUR;

        var eitherOfConversion =
            valueConverters.parseStringToEnumCurrency(euroString);
        var resultOfConversion = eitherOfConversion.fold((l) => '', (r) => r);
        expect(currency, resultOfConversion);
      },
    );

    test(
      'should not convert string to enum currency and return left',
      () async {
        String testString = 'TEST';

        var eitherOfConversion =
            valueConverters.parseStringToEnumCurrency(testString);
        var resultOfConversion =
            eitherOfConversion.fold((l) => testString, (r) => r);
        expect(testString, resultOfConversion);
      },
    );
  });
}
