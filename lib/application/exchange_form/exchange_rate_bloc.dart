// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_date.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/domain/exchange_rate/i_cantor_remote_data_source.dart';

import 'package:kt_dart/collection.dart';
import '../../domain/exchange_rate/cantor_remote_failure.dart';
import '../../domain/exchange_rate/exchange_date.dart';

part 'exchange_rate_event.dart';

part 'exchange_rate_state.dart';

part 'exchange_rate_bloc.freezed.dart';

@injectable
class ExchangeRateBloc extends Bloc<ExchangeRateEvent, ExchangeRateState> {
  final ICantorRemoteDataSource iCantorRemoteDataSource;

  ExchangeRateBloc(this.iCantorRemoteDataSource) : super(ExchangeRateState.initial()) {
    on<ExchangeRateEvent>(
      (event, emit) {
        event.map(fetch: _fetch);
      },
    );
  }

  void _fetch(_) async {
    KtList<ExchangeRate> _exchangeRateList;
    ExchangeDate _exchangeDate;

    emit(state.copyWith(
      isSubmitting: true,
      failureOrSuccessOption: none(),
      showErrorMessages: false,
    ));


    final Either<CantorRemoteFailure, ExchangeDate> exchangeRatesUpdateDate =
        await iCantorRemoteDataSource.getExchangeRatesUpdateDate();
    final Either<CantorRemoteFailure, KtList<ExchangeRate>> exchangeRates =
        await iCantorRemoteDataSource.getExchangeRates();
    _exchangeRateList = exchangeRates.fold((f) => const KtList.empty(), (r) => r);
    _exchangeDate = exchangeRatesUpdateDate.fold((l) => ExchangeDate.empty(), (r) => r);

    if (_exchangeRateList.isEmpty() || _exchangeDate == ExchangeDate.empty()) {
      emit(
        state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: some(left(const CantorRemoteFailure.serverError())),
          showErrorMessages: true,
        ),
      );
    } else {
      emit(
        state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: some(right(unit)),
          showErrorMessages: false,
          exchangeRate: _exchangeRateList,
          exchangeDate: _exchangeDate,
        ),
      );
    }
  }
}
