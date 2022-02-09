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

  group('email validation', () {
    test(
      'should return email when email is correct',
      () async {
        // arrange
        const email = 'test@test.com';
        // act
        final result = valueValidators.emailAddress(email);
        const correctEmail = Right(email);

        // assert
        expect(result, correctEmail);
      },
    );
    test(
      'should return Failure when email have not @ sign',
      () async {
        // arrange
        const email = 'testtest.com';
        // act
        final result = valueValidators.emailAddress(email);
        const failureEmail =
            Left(ValueFailure<String>.invalidEmail(failedValue: email));
        // assert
        expect(result, failureEmail);
      },
    );

    test(
      'should return Failure when email is incorrect',
      () async {
        // arrange
        const email = 'test@test.';
        // act
        final result = valueValidators.emailAddress(email);
        const failureEmail =
            Left(ValueFailure<String>.invalidEmail(failedValue: email));
        // assert
        expect(result, failureEmail);
      },
    );
  });
  group('password validation', () {
    test(
      'should return password when password is correct',
      () async {
        // arrange
        const password = '123456';
        // act
        final result = valueValidators.password(password);
        const correctPassword = Right(password);

        // assert
        expect(result, correctPassword);
      },
    );
    test(
      'should return Failure when password is too short',
      () async {
        // arrange
        const password = '12345';
        // act
        final result = valueValidators.password(password);
        const failurePassword =
            Left(ValueFailure<String>.shortPassword(failedValue: password));

        // assert
        expect(result, failurePassword);
      },
    );
  });
  group('currency value validation,', () {
    test(
      'should return failure when currency value is too small',
      () async {
        double doubleValue = CoreConstants.minValueCurrency - 1;
        var result = valueValidators.currencyValue(doubleValue);
        var failureCurrency = Left(ValueFailure.currencyTooSmall(
            failedValue: doubleValue, min: CoreConstants.minValueCurrency));
        expect(result, failureCurrency);
      },
    );

    test(
      'should return failure when currency value is too big',
      () async {
        double doubleValue = CoreConstants.maxValueCurrency + 1;
        var result = valueValidators.currencyValue(doubleValue);
        var failureCurrency = Left(ValueFailure.currencyTooBig(
            failedValue: doubleValue, max: CoreConstants.maxValueCurrency));
        expect(result, failureCurrency);
      },
    );

    test(
      'should return true when max value - min value is bigger than 1',
      () async {
        double difference =
            CoreConstants.maxValueCurrency - CoreConstants.minValueCurrency;
        bool differenceResult = difference > 1;
        expect(differenceResult, true);
      },
    );

    test(
      'should return currency value currency value is correct',
      () async {
        double difference =
            CoreConstants.maxValueCurrency - CoreConstants.minValueCurrency;
        var result = ValueValidators().currencyValue(difference);
        var correctCurrencyValue = Right(difference);
        expect(result, correctCurrencyValue);
      },
    );
  });
}
