part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormEvent with _$TransactionFormEvent {
  const factory TransactionFormEvent.currencyValueChanged(CurrencyValue currencyValue) = _CurrencyValueChanged;

  const factory TransactionFormEvent.transactionConfirmed() = _TransactionConfirmed;

  const factory TransactionFormEvent.exchangeRateSelected(ExchangeRate exchangeRate) = _ExchangeRateSelected;

  const factory TransactionFormEvent.transactionTypeSelected(TransactionType transactionType) =
      _TransactionTypeSelected;
}
