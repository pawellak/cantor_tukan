import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kantor_tukan/domain/core/currency_value.dart';
import 'package:kantor_tukan/domain/core/failures.dart';

part 'exchange_date.freezed.dart';

const zeroDate = 0;

@freezed
abstract class ExchangeDate implements _$ExchangeDate {
  const ExchangeDate._();

  const factory ExchangeDate({
    required DateCantor updateDate,
  }) = _ExchangeDate;

  factory ExchangeDate.empty() => ExchangeDate(
        updateDate: DateCantor.fromDateTime(
          DateTime(zeroDate),
        ),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return updateDate.failureOrUnit.fold((f) => some(f), (r) => none());
  }
}
