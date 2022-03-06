part of 'transaction_form_bloc.dart';

@freezed
class TransactionFormState with _$TransactionFormState {
  const factory TransactionFormState({
    required Transaction transaction,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<TransactionFailure, Unit>> transactionFailureOrSuccessOption,
  }) = _TransactionFormState;

  factory TransactionFormState.initial() => TransactionFormState(
        transaction: Transaction(
          uId: UniqueId(),
          currency: Currency.fromEnum(EnumCurrency.undefined),
          transactionType: TransactionType.fromEnum(EnumTransactionType.buy),
          transactionStatus: TransactionStatus.fromEnum(EnumTransactionStatus.pending),
          dateAcceptation: DateCantor.fromDateTime(DateTime(0)),
          dateReservation: DateCantor.fromDateTime(DateTime(0)),
          currencyValue: CurrencyValue(0),
          currencyBill: CurrencyBill(0),
          priceBuy: CurrencyPrice(0),
          priceSell: CurrencyPrice(0),
        ),
        showErrorMessages: false,
        isSubmitting: false,
        transactionFailureOrSuccessOption: none(),
      );
}
