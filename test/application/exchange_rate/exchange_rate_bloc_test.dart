import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/application/exchange_form/exchange_rate_bloc.dart';
import 'package:kantor_tukan/domain/core/currency_value.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/exchange_rate/cantor_remote_failure.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_date.dart';

import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/domain/exchange_rate/i_cantor_remote_data_source.dart';
import 'package:kantor_tukan/domain/internet/i_internet_connection_checker.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'exchange_rate_bloc_test.mocks.dart';

@GenerateMocks([ICantorRemoteDataSource])
@GenerateMocks([IInternetConnectionChecker])
void main() {
  late MockICantorRemoteDataSource mockIData;
  late MockIInternetConnectionChecker mockInternet;
  late ExchangeRateBloc exchangeRateBloc;
  late KtList<ExchangeRate> ktListExchangeRate;
  late ExchangeRate exchangeRate;
  late KtList<ExchangeRate> ktListExchangeRateInit;
  late ExchangeDate exchangeDate;
  late ExchangeDate exchangeDateInit;

  setUp(() {
    mockIData = MockICantorRemoteDataSource();
    mockInternet = MockIInternetConnectionChecker();
    exchangeRateBloc = ExchangeRateBloc(mockIData,mockInternet);

    var listExchangeRate = <ExchangeRate>[];
    exchangeRate = ExchangeRate(
        currency: Currency.fromEnum(EnumCurrency.EUR), priceBuy: CurrencyPrice(5), priceSell: CurrencyPrice(5));
    listExchangeRate.add(exchangeRate);
    listExchangeRate.add(exchangeRate);
    ktListExchangeRate = listExchangeRate.toImmutableList();
    exchangeDate = ExchangeDate(updateDate: DateCantor.fromDateTime(DateTime.now()));
    ktListExchangeRateInit = <ExchangeRate>[].toImmutableList();
    exchangeDateInit = ExchangeDate(updateDate: DateCantor.fromDateTime(DateTime(0)));
  });

  group('fetch', () {
    blocTest<ExchangeRateBloc, ExchangeRateState>(
      'should exchange rate event fetch correct data',
      build: () {
        when(mockInternet.hasConnection()).thenAnswer((_) async => Future.value(true));
        when(mockIData.getExchangeRates()).thenAnswer((_) async => Future.value(right(ktListExchangeRate)));
        when(mockIData.getExchangeRatesUpdateDate()).thenAnswer((_) async => Future.value(right(exchangeDate)));
        return exchangeRateBloc;
      },
      act: (bloc) {
        bloc.add(const ExchangeRateEvent.fetch());
      },
      expect: () => [
        exchangeRateBloc.state.copyWith(
          isSubmitting: true,
          failureOrSuccessOption: none(),
          showErrorMessages: false,
          exchangeDate: exchangeDateInit,
          exchangeRate: ktListExchangeRateInit,
        ),
        exchangeRateBloc.state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: some(right(unit)),
          showErrorMessages: false,
          exchangeRate: ktListExchangeRate,
          exchangeDate: exchangeDate,
        )
      ],
    );

    blocTest<ExchangeRateBloc, ExchangeRateState>(
      'should exchange rate event fetch incorrect data',
      build: () {
        when(mockInternet.hasConnection()).thenAnswer((_) async => Future.value(true));
        when(mockIData.getExchangeRates())
            .thenAnswer((_) async => Future.value(left(const CantorRemoteFailure.serverError())));

        when(mockIData.getExchangeRatesUpdateDate())
            .thenAnswer((_) async => Future.value(left(const CantorRemoteFailure.serverError())));
        return exchangeRateBloc;
      },
      act: (bloc) {
        bloc.add(const ExchangeRateEvent.fetch());
      },
      expect: () => [
        exchangeRateBloc.state.copyWith(
          isSubmitting: true,
          failureOrSuccessOption: none(),
          showErrorMessages: false,
          exchangeDate: exchangeDateInit,
          exchangeRate: ktListExchangeRateInit,
        ),
        exchangeRateBloc.state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: some(left(const CantorRemoteFailure.serverError())),
          showErrorMessages: true,
          exchangeDate: exchangeDateInit,
          exchangeRate: ktListExchangeRateInit,
        )
      ],
    );
  });
  group(
    'fetched',
    () {
      blocTest<ExchangeRateBloc, ExchangeRateState>(
        'should return fetched data',
        build: () {
          return exchangeRateBloc;
        },
        act: (bloc) {
          bloc.add(ExchangeRateEvent.fetched(exchangeRate));
        },
        expect: () => [
          exchangeRateBloc.state.copyWith(
              isSubmitting: true,
              failureOrSuccessOption: none(),
              showErrorMessages: false,
              exchangeDate: exchangeDateInit,
              exchangeRate: ktListExchangeRateInit,
              isExchangeRateSelected: true,
              exchangeRateSelected: exchangeRate),
        ],
      );
    },
  );
}
