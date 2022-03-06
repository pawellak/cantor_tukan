// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_date.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/domain/exchange_rate/i_cantor_remote_data_source.dart';
import 'package:kantor_tukan/domain/internet/i_internet_connection_checker.dart';

import 'package:kt_dart/collection.dart';
import '../../domain/exchange_rate/cantor_remote_failure.dart';
import '../../domain/exchange_rate/exchange_date.dart';

part 'exchange_rate_event.dart';

part 'exchange_rate_state.dart';

part 'exchange_rate_bloc.freezed.dart';

@injectable
class ExchangeRateBloc extends Bloc<ExchangeRateEvent, ExchangeRateState> {
  final ICantorRemoteDataSource iCantorRemoteDataSource;
  final IInternetConnectionChecker internetConnectionChecker;

  ExchangeRateBloc(this.iCantorRemoteDataSource, this.internetConnectionChecker) : super(ExchangeRateState.initial()) {
    on<ExchangeRateEvent>((event, emit) {
      event.map(fetch: _fetch, fetched: _fetched);
    });
  }

  void _fetch(_) async {
    _setLoadingState();
    final hasNoConnection = !await internetConnectionChecker.hasConnection();

    if (hasNoConnection) {
      _setNoInternetState();
      return;
    }

    final exchangeRatesUpdateDate = await _getExchangeRatesUpdateDate();
    final exchangeRates = await _getExchangeRates();

    final _exchangeRateList = _foldExchangeRatesList(exchangeRates);
    final _exchangeDate = _foldExchangeDate(exchangeRatesUpdateDate);

    if (isDataFailure(_exchangeRateList, _exchangeDate)) {
      _setFailureState();
    } else {
      _setSuccessState(_exchangeRateList, _exchangeDate);
    }
  }



  KtList<ExchangeRate> _foldExchangeRatesList(Either<CantorRemoteFailure, KtList<ExchangeRate>> exchangeRates) =>
      exchangeRates.fold((f) => const KtList.empty(), (r) => r);

  ExchangeDate _foldExchangeDate(Either<CantorRemoteFailure, ExchangeDate> exchangeRatesUpdateDate) =>
      exchangeRatesUpdateDate.fold((l) => ExchangeDate.empty(), (r) => r);

  void _fetched(_FetchedExchangeRate value) {
    emit(
      state.copyWith(isExchangeRateSelected: true, exchangeRateSelected: value.exchangeRate),
    );
  }

  Future<Either<CantorRemoteFailure, ExchangeDate>> _getExchangeRatesUpdateDate() async {
    final Either<CantorRemoteFailure, ExchangeDate> exchangeRatesUpdateDate =
        await iCantorRemoteDataSource.getExchangeRatesUpdateDate();
    return exchangeRatesUpdateDate;
  }

  Future<Either<CantorRemoteFailure, KtList<ExchangeRate>>> _getExchangeRates() async {
    final Either<CantorRemoteFailure, KtList<ExchangeRate>> exchangeRates =
        await iCantorRemoteDataSource.getExchangeRates();
    return exchangeRates;
  }

  bool isDataFailure(KtList<ExchangeRate> _exchangeRateList, ExchangeDate _exchangeDate) =>
      _exchangeRateList.isEmpty() || _exchangeDate == ExchangeDate.empty();

  void _setLoadingState() {
    emit(state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
      showErrorMessages: false,
    ));
  }

  void _setFailureState() {
    emit(state.copyWith(
      isSubmitting: false,
      failureOrSuccessOption: some(left(const CantorRemoteFailure.serverError())),
      showErrorMessages: true,
    ));
  }

  void _setNoInternetState() {
    emit(state.copyWith(
      isSubmitting: false,
      failureOrSuccessOption: some(left(const CantorRemoteFailure.noInternet())),
      showErrorMessages: true,
    ));
  }

  void _setSuccessState(KtList<ExchangeRate> _exchangeRateList, ExchangeDate _exchangeDate) {
    emit(state.copyWith(
      isSubmitting: false,
      failureOrSuccessOption: some(right(unit)),
      showErrorMessages: false,
      exchangeRate: _exchangeRateList,
      exchangeDate: _exchangeDate,
    ));
  }
}
