import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/core/core_constants.dart';
import 'package:kantor_tukan/domain/core/errors.dart';
import 'package:kantor_tukan/domain/core/failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right.
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => '${CoreConstants.value}($value)';
}
