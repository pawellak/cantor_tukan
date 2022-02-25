part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormEvent with _$TransactionFormEvent {
  const factory TransactionFormEvent.currencyValueChanged(CurrencyValue currencyValue) = _CurrencyValueChanged;

  const factory TransactionFormEvent.transactionConfirmed() = _TransactionConfirmed;

  const factory TransactionFormEvent.setBill() = _SetBill;

  const factory TransactionFormEvent.setDate() = _SetDate;

  const factory TransactionFormEvent.reset() = _Reset;

  const factory TransactionFormEvent.exchangeRateSelected(ExchangeRate exchangeRate) = _ExchangeRateSelected;

  const factory TransactionFormEvent.transactionTypeSelected(TransactionType transactionType) =
      _TransactionTypeSelected;
}
