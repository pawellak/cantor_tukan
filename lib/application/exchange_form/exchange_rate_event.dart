part of 'exchange_rate_bloc.dart';

@freezed
abstract class ExchangeRateEvent with _$ExchangeRateEvent {
  const factory ExchangeRateEvent.fetch() = _FetchExchangeRate;
}
