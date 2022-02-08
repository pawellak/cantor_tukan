import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/domain/auth/value_object.dart';

void main() {
  setUp(() {});

  test('should create instance of email address and check basic functionality',() async {
      var emailAddress = EmailAddress('test@test.pl');
      var isEmailCorrect = emailAddress.value.isRight();
      expect(isEmailCorrect, true);

      emailAddress = EmailAddress('testtest.pl');
      var isEmailInCorrect = emailAddress.value.isLeft();
      expect(isEmailInCorrect, true);
    },);

  test('should create instance of email address and check basic functionality',() async {
      var emailAddress = EmailAddress('test@test.pl');
      var isEmailCorrect = emailAddress.value.isRight();
      expect(isEmailCorrect, true);

      emailAddress = EmailAddress('testtest.pl');
      var isEmailInCorrect = emailAddress.value.isLeft();
      expect(isEmailInCorrect, true);
    },);

  test('should create instance of password and check basic functionality',() async {
      var password = Password('123456');
      var isPasswordCorrect = password.value.isRight();
      expect(isPasswordCorrect, true);

      password = Password('12345');
      var isPasswordIncorrect = password.value.isLeft();
      expect(isPasswordIncorrect, true);
    },);
}
