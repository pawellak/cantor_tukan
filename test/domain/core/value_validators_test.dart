import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/domain/core/core_constants.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:kantor_tukan/domain/core/value_validators.dart';

void main() {
  late ValueValidators valueValidators;

  setUp(() {
    valueValidators = ValueValidators();
  });

  group(
    'email validation',
    () {
      test(
        'should return email when email is correct',
        () {
          const testedData = 'test@test.com';
          final result = valueValidators.emailAddress(testedData);
          const expectedResult = Right(testedData);
          expect(result, expectedResult);
        },
      );
      test(
        'should return Failure when email have not @ sign',
        () {
          const testedData = 'testtest.com';
          final result = valueValidators.emailAddress(testedData);
          const expectedResult = Left(ValueFailure<String>.invalidEmail(failedValue: testedData));
          expect(result, expectedResult);
        },
      );

      test(
        'should return Failure when email is incorrect',
        () {
          const testedData = 'test@test.';
          final result = valueValidators.emailAddress(testedData);
          const expectedResult = Left(ValueFailure<String>.invalidEmail(failedValue: testedData));
          expect(result, expectedResult);
        },
      );
    },
  );

  group(
    'password validation',
    () {
      test(
        'should return password when password is correct',
        () {
          const testedData = '123456';
          final result = valueValidators.password(testedData);
          const expectedResult = Right(testedData);
          expect(result, expectedResult);
        },
      );
      test(
        'should return Failure when password is too short',
        () {
          const testedData = '12345';
          final result = valueValidators.password(testedData);
          const expectedResult = Left(ValueFailure<String>.shortPassword(failedValue: testedData));
          expect(result, expectedResult);
        },
      );
    },
  );

  group(
    'currency value,',
    () {
      test(
        'should return failure when currency value is too small',
        () {
          double minValueCurrency = CoreConstants.minValueCurrency;
          double valueBelowMin = CoreConstants.minValueCurrency - 1;
          var result = valueValidators.currencyBill(valueBelowMin);
          var expectedResult =
              Left(ValueFailure.currencyValueTooSmall(failedValue: valueBelowMin, min: minValueCurrency));
          expect(result, expectedResult);
        },
      );

      test(
        'should return failure when currency value is too big',
        () {
          double maxValueCurrency = CoreConstants.maxValueCurrency;
          double valueAboveMaxValue = CoreConstants.maxValueCurrency + 1;
          var result = valueValidators.currencyBill(valueAboveMaxValue);
          var expectedResult =
              Left(ValueFailure.currencyValueTooBig(failedValue: valueAboveMaxValue, max: maxValueCurrency));
          expect(result, expectedResult);
        },
      );

      test(
        'should return true when max value - min value is bigger or equal 1',
        () {
          const expectedResult = true;
          const difference = CoreConstants.maxValueCurrency - CoreConstants.minValueCurrency;
          const result = difference >= 1;
          expect(result, expectedResult);
        },
      );

      test(
        'should CoreConstants.minValueCurrency be bigger or equal 1',
        () {
          const expectedResult = true;
          const testedData = CoreConstants.minValueCurrency;
          const result = testedData >= 1;
          expect(result, expectedResult);
        },
      );

      test(
        'should return currency value when max value - min value is bigger than 1',
        () {
          double difference = CoreConstants.maxValueCurrency - CoreConstants.minValueCurrency;
          var result = ValueValidators().currencyBill(difference);
          var expectedResult = Right(difference);
          expect(result, expectedResult);
        },
      );
    },
  );

  group(
    'date time',
    () {
      test(
        'should return right result when correct date is passed',
        () {
          final date = DateTime.now();
          var resultFold = ValueValidators().dateTime(date);
          var result = resultFold.fold((l) => l, (r) => r);
          final expectResult = date;
          expect(result, expectResult);
        },
      );

      test(
        'should return left result when date before minPossiblyYearData -1',
        () {
          const minDate = CoreConstants.minPossiblyYearData;
          final date = DateTime(minDate - 1);
          var resultFold = ValueValidators().dateTime(date);
          var result = resultFold.fold((l) => l, (r) => r);
          final expectResult = ValueFailure.invalidDate(failedValue: date);
          expect(result, expectResult);
        },
      );

      test(
        'should return left result when correct date is utc',
        () {
          const minDate = CoreConstants.minPossiblyYearData;
          final date = DateTime.utc(minDate + 1);
          var resultFold = ValueValidators().dateTime(date);
          var result = resultFold.fold((l) => l, (r) => r);
          final expectResult = ValueFailure.dateIsUTC(failedValue: date);
          expect(result, expectResult);
        },
      );
    },
  );
}
