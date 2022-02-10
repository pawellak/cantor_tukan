import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/domain/auth/value_object.dart';

void main() {
  setUp(() {});

  test(
    'should create instance of email address and check basic functionality',
    () async {
      const expectedResult = true;
      var testedData = EmailAddress('test@test.pl');
      var result = testedData.value.isRight();

      expect(result, expectedResult);

      testedData = EmailAddress('testtest.pl');
      result = testedData.value.isLeft();
      expect(result, expectedResult);
    },
  );

  test(
    'should create instance of password and check basic functionality',
    () async {
      const expectedResult = true;
      var testedData = Password('123456');
      var result = testedData.value.isRight();
      expect(result, expectedResult);

      testedData = Password('12345');
      result = testedData.value.isLeft();
      expect(result, expectedResult);
    },
  );
}
