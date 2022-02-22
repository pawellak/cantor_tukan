part of 'exchange_rate_bloc.dart';

@freezed
class ExchangeRateEvent with _$ExchangeRateEvent {
  const factory ExchangeRateEvent.fetch() = _FetchExchangeRate;
  const factory ExchangeRateEvent.fetched(ExchangeRate exchangeRate) = _FetchedExchangeRate;
}
