import 'package:dartz/dartz.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:kantor_tukan/domain/core/value_objects.dart';
import 'package:kantor_tukan/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    var eitherFailureOrString = ValueValidators().emailAddress(input);

    return EmailAddress._(eitherFailureOrString);
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    var eitherFailureOrString = ValueValidators().password(input);

    return Password._(eitherFailureOrString);
  }

  const Password._(this.value);
}
