// Mocks generated by Mockito 5.1.0 from annotations
// in kantor_tukan/test/application/exchange_rate/exchange_rate_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:kantor_tukan/domain/exchange_rate/cantor_remote_failure.dart'
    as _i5;
import 'package:kantor_tukan/domain/exchange_rate/exchange_date.dart' as _i6;
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart' as _i8;
import 'package:kantor_tukan/domain/exchange_rate/i_cantor_remote_data_source.dart'
    as _i3;
import 'package:kantor_tukan/domain/internet/i_internet_connection_checker.dart'
    as _i9;
import 'package:kt_dart/kt.dart' as _i7;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [ICantorRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockICantorRemoteDataSource extends _i1.Mock
    implements _i3.ICantorRemoteDataSource {
  MockICantorRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.CantorRemoteFailure, _i6.ExchangeDate>>
      getExchangeRatesUpdateDate() => (super.noSuchMethod(
          Invocation.method(#getExchangeRatesUpdateDate, []),
          returnValue: Future<
                  _i2.Either<_i5.CantorRemoteFailure, _i6.ExchangeDate>>.value(
              _FakeEither_0<_i5.CantorRemoteFailure, _i6.ExchangeDate>())) as _i4
          .Future<_i2.Either<_i5.CantorRemoteFailure, _i6.ExchangeDate>>);
  @override
  _i4.Future<_i2.Either<_i5.CantorRemoteFailure, _i7.KtList<_i8.ExchangeRate>>>
      getExchangeRates() =>
          (super.noSuchMethod(Invocation.method(#getExchangeRates, []),
              returnValue:
                  Future<_i2.Either<_i5.CantorRemoteFailure, _i7.KtList<_i8.ExchangeRate>>>.value(
                      _FakeEither_0<_i5.CantorRemoteFailure,
                          _i7.KtList<_i8.ExchangeRate>>())) as _i4
              .Future<_i2.Either<_i5.CantorRemoteFailure, _i7.KtList<_i8.ExchangeRate>>>);
}

/// A class which mocks [IInternetConnectionChecker].
///
/// See the documentation for Mockito's code generation for more information.
class MockIInternetConnectionChecker extends _i1.Mock
    implements _i9.IInternetConnectionChecker {
  MockIInternetConnectionChecker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<bool> hasConnection() =>
      (super.noSuchMethod(Invocation.method(#hasConnection, []),
          returnValue: Future<bool>.value(false)) as _i4.Future<bool>);
}
