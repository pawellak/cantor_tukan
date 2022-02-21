import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/infrastructure/exchange_rate/input_converter.dart';
import '../../fixtures/fixture_reader.dart';

void main() {
  test(
    'should convert fixtures with exchange rates from cantor remote data source to Json',
    () async {
      final expectedResult = jsonDecode(fixture('currencyList.json'));
      final String cantorRemoteDataSource = fixture('currency.txt');
      final result = InputConverter().toExchangeRateJsonFromCantorRemoteString(cantorRemoteDataSource);
      expect(result, expectedResult);
    },
  );

  test(
    'should convert fixtures date from cantor remote data source to date time',
    () async {
      final expectedResult = DateTime(2022, 02, 15);
      final String cantorRemoteDataSource = fixture('date.txt');
      final result = InputConverter().toDateTimeFromCantorRemoteString(cantorRemoteDataSource);
      final areDatesEqual = result.isAtSameMomentAs(expectedResult);
      expect(areDatesEqual, true);
    },
  );
}
