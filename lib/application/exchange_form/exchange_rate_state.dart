part of 'exchange_rate_bloc.dart';

@freezed
abstract class ExchangeRateState with _$ExchangeRateState {
  const factory ExchangeRateState(
      {required KtList<ExchangeRate> exchangeRate,
      required ExchangeDate exchangeDate,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<CantorRemoteFailure, Unit>> failureOrSuccessOption}) = _ExchangeRateState;

  factory ExchangeRateState.initial() => ExchangeRateState(
      failureOrSuccessOption: none(),
      showErrorMessages: false,
      isSubmitting: true,
      exchangeDate: ExchangeDate.empty(),
      exchangeRate: const KtList.empty());
}
