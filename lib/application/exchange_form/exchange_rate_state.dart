part of 'exchange_rate_bloc.dart';

@freezed
class ExchangeRateState with _$ExchangeRateState {
  const factory ExchangeRateState(
      {required KtList<ExchangeRate> exchangeRate,
      required ExchangeDate exchangeDate,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool isExchangeRateSelected,
      required ExchangeRate exchangeRateSelected,
      required Option<Either<CantorRemoteFailure, Unit>> failureOrSuccessOption}) = _ExchangeRateState;

  factory ExchangeRateState.initial() => ExchangeRateState(
        failureOrSuccessOption: none(),
        showErrorMessages: false,
        isSubmitting: true,
        isExchangeRateSelected: false,
        exchangeRateSelected: ExchangeRate.empty(),
        exchangeDate: ExchangeDate.empty(),
        exchangeRate: const KtList.empty(),
      );
}
