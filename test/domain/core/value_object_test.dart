import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:kantor_tukan/domain/core/value_objects.dart';

class CustomObjectRight extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CustomObjectRight(String input) {
    Either<ValueFailure<String>, String> _tValue = Right(input);

    return CustomObjectRight._(_tValue);
  }

  const CustomObjectRight._(this.value);
}
class CustomObjectLeft extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CustomObjectLeft(String input) {
    Either<ValueFailure<String>, String> _tValue =
        Left(ValueFailure.invalidEmail(failedValue: input));

    return CustomObjectLeft._(_tValue);
  }

  const CustomObjectLeft._(this.value);
}

void main() {
  late CustomObjectRight customObjectRightOne;
  late CustomObjectRight customObjectRightTwo;
  late CustomObjectLeft customObjectLeftOne;
  late CustomObjectLeft customObjectLeftTwo;

  const tValueOne = 'test';
  const tValueTwoNotEqualToValueOne = 'test2';

  setUp(() {
    customObjectRightOne = CustomObjectRight(tValueOne);
    customObjectRightTwo = CustomObjectRight(tValueOne);
    customObjectLeftOne = CustomObjectLeft(tValueOne);
    customObjectLeftTwo = CustomObjectLeft(tValueOne);
  });

  test('should two object be equal',() async {
      expect(customObjectRightOne, customObjectRightTwo);
      expect(customObjectLeftOne, customObjectLeftTwo);
    },);
  test('should two object be not equal',() async {
      customObjectRightTwo = CustomObjectRight(tValueTwoNotEqualToValueOne);
      expect(customObjectRightOne, isNot(customObjectRightTwo));
      customObjectLeftTwo = CustomObjectLeft(tValueTwoNotEqualToValueOne);
      expect(customObjectRightOne, isNot(customObjectRightTwo));
    },);
  test('should to string return Value: (Right(\$value) when either is right',() async {
      customObjectRightOne = CustomObjectRight(tValueOne);
      String result = customObjectRightOne.toString();
      expect(result, 'Value: (Right($tValueOne))');
    },);
  test('should to string work when either is left',() async {
      customObjectLeftOne = CustomObjectLeft(tValueOne);
      String result = customObjectLeftOne.toString();
      expect(result,
          'Value: (Left(ValueFailure<String>.invalidEmail(failedValue: $tValueOne)))');
    },);
  test('should is valid return correct validation',() async {
      var invalidObject = customObjectLeftTwo.isValid();
      expect(false, invalidObject);
      var validObject = customObjectRightOne.isValid();
      expect(true, validObject);
    },);
  test('should crash when object is a left type when getOrCrash call', () async {
      bool appCrashed = false;

      try {
        customObjectLeftTwo.getOrCrash();
      } catch (e) {
        appCrashed = true;
      }

      expect(appCrashed, true);
    },);
  test('should not crash when object is a right type when getOrCrash call',() async {
      bool appCrashed = false;

      try {
        customObjectRightOne.getOrCrash();
      } catch (e) {
        appCrashed = true;
      }

      expect(appCrashed, false);
    },);
}
