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

void main() {
  late CustomObjectRight customObjectOne;
  late CustomObjectRight customObjectTwo;

  test(
    'should two object be equal',
    () async {
      customObjectOne = CustomObjectRight('test');
      customObjectTwo = CustomObjectRight('test');
      // assert
      expect(customObjectOne, customObjectTwo);
    },
  );

  test(
    'should two object be not equal',
    () async {
      customObjectOne = CustomObjectRight('test');
      customObjectTwo = CustomObjectRight('test1');
      // assert
      expect(customObjectOne, isNot(customObjectTwo));
    },
  );

  test(
    'should to string return Value(\$value)',
    () async {
      String value = 'test';
      customObjectOne = CustomObjectRight(value);

      String result = customObjectOne.toString();

      // assert
      expect(result, 'Value: (Right($value))');
    },
  );


}
