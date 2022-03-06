import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/domain/core/currency_value.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/value_objects.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/domain/internet/i_internet_connection_checker.dart';
import 'package:kantor_tukan/domain/transaction/i_transaction_repository.dart';
import 'package:kantor_tukan/domain/transaction/transaction.dart';
import 'package:kantor_tukan/domain/transaction/transaction_failure.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'transaction_form_bloc_test.mocks.dart';

@GenerateMocks([ITransactionRepository])
@GenerateMocks([IInternetConnectionChecker])
void main() {
  late MockITransactionRepository mockTransRepo;
  late MockIInternetConnectionChecker mockInternetChecker;
  late TransactionFormBloc transactionFormBloc;
  late Transaction transaction;
  late Transaction transactionError;
  late ExchangeRate exchangeRate;
  late DateTime dateTime;

  setUp(() {
    mockTransRepo = MockITransactionRepository();
    mockInternetChecker = MockIInternetConnectionChecker();
    transactionFormBloc = TransactionFormBloc(mockTransRepo, mockInternetChecker);

    transaction = transactionFormBloc.state.transaction.copyWith(
      uId: UniqueId.fromUniqueString('1234'),
      currency: Currency.fromEnum(EnumCurrency.EUR),
      transactionType: TransactionType.fromEnum(EnumTransactionType.buy),
      transactionStatus: TransactionStatus.fromEnum(EnumTransactionStatus.pending),
      dateAcceptation: DateCantor.fromDateTime(DateTime.now()),
      dateReservation: DateCantor.fromDateTime(DateTime.now()),
      currencyValue: CurrencyValue(15),
      currencyBill: CurrencyBill(15),
      priceBuy: CurrencyPrice(5),
      priceSell: CurrencyPrice(5),
    );
    transactionError = transaction.copyWith(currencyValue: CurrencyValue(0));

    exchangeRate = ExchangeRate(
        currency: Currency.fromEnum(EnumCurrency.EUR), priceBuy: CurrencyPrice(6), priceSell: CurrencyPrice(6));

    dateTime = DateTime.now();
  });

  group('currency value changed', () {
    blocTest<TransactionFormBloc, TransactionFormState>(
      'correct passed data, but server error',
      build: () {
        when(mockTransRepo.create(transaction)).thenAnswer((_) async => left(const TransactionFailure.unexpected()));
        return transactionFormBloc;
      },
      act: (bloc) {
        bloc.emit(bloc.state.copyWith(transaction: transaction));
        bloc.add(TransactionFormEvent.currencyValueChanged(CurrencyValue(20)));
      },
      expect: () => [
        //first emit is call to change state of bloc. No exist in real app.
        transactionFormBloc.state.copyWith(
          showErrorMessages: false,
          isSubmitting: false,
          transactionFailureOrSuccessOption: none(),
          transaction: transaction,
        ),
        transactionFormBloc.state.copyWith(
          isSubmitting: false,
          showErrorMessages: false,
          transaction: transaction.copyWith(
             currencyValue: CurrencyValue(20)),
          transactionFailureOrSuccessOption: none(),
        ),
      ],
    );
  });
  group('transaction confirmed', () {
    blocTest<TransactionFormBloc, TransactionFormState>(
      'correct passed data',
      build: () {
        when(mockTransRepo.create(transaction)).thenAnswer((_) async => right(unit));
        when(mockInternetChecker.hasConnection()).thenAnswer((_) => Future.value(true));
        return transactionFormBloc;
      },
      act: (bloc) {
        bloc.emit(bloc.state.copyWith(transaction: transaction));
        bloc.add(const TransactionFormEvent.transactionConfirmed());
      },
      expect: () => [
        //first emit is call to change state of bloc. No exist in real app.
        transactionFormBloc.state.copyWith(
          showErrorMessages: false,
          isSubmitting: false,
          transactionFailureOrSuccessOption: none(),
          transaction: transaction,
        ),
        transactionFormBloc.state.copyWith(
          isSubmitting: true,
          showErrorMessages: false,
          transaction: transaction,
          transactionFailureOrSuccessOption: none(),
        ),
        transactionFormBloc.state.copyWith(
          isSubmitting: false,
          showErrorMessages: false,
          transaction: transaction,
          transactionFailureOrSuccessOption: Some(
            right(unit),
          ),
        ),
      ],
    );

    blocTest<TransactionFormBloc, TransactionFormState>(
      'wrong passed data',
      build: () {
        when(mockTransRepo.create(transactionError)).thenAnswer((_) async => right(unit));
        when(mockInternetChecker.hasConnection()).thenAnswer((_) => Future.value(true));
        return transactionFormBloc;
      },
      act: (bloc) {
        bloc.emit(bloc.state.copyWith(transaction: transactionError));
        bloc.add(const TransactionFormEvent.transactionConfirmed());
      },
      expect: () => [
        //first emit is call to change state of bloc. No exist in real app.
        transactionFormBloc.state.copyWith(
          showErrorMessages: false,
          isSubmitting: false,
          transactionFailureOrSuccessOption: const None(),
          transaction: transactionError,
        ),
        transactionFormBloc.state.copyWith(
          isSubmitting: true,
          showErrorMessages: false,
          transaction: transactionError,
          transactionFailureOrSuccessOption: const None(),
        ),
        transactionFormBloc.state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          transaction: transactionError,
          transactionFailureOrSuccessOption: const None(),
        ),
      ],
    );
    blocTest<TransactionFormBloc, TransactionFormState>(
      'correct passed data, but server error',
      build: () {
        when(mockTransRepo.create(transaction)).thenAnswer((_) async => const Left(TransactionFailure.unexpected()));
        when(mockInternetChecker.hasConnection()).thenAnswer((_) => Future.value(true));
        return transactionFormBloc;
      },
      act: (bloc) {
        bloc.emit(bloc.state.copyWith(transaction: transaction));
        bloc.add(const TransactionFormEvent.transactionConfirmed());
      },
      expect: () => [
        //first emit is call to change state of bloc. No exist in real app.
        transactionFormBloc.state.copyWith(
          showErrorMessages: false,
          isSubmitting: false,
          transactionFailureOrSuccessOption: none(),
          transaction: transaction,
        ),
        transactionFormBloc.state.copyWith(
          isSubmitting: true,
          showErrorMessages: false,
          transaction: transaction,
          transactionFailureOrSuccessOption: none(),
        ),
        transactionFormBloc.state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          transaction: transaction,
          transactionFailureOrSuccessOption: const Some(
            Left(TransactionFailure.unexpected()),
          ),
        ),
      ],
    );
  });
  group('set bill', () {
    blocTest<TransactionFormBloc, TransactionFormState>(
      'currencies are correct',
      build: () {
        return transactionFormBloc;
      },
      act: (bloc) {
        bloc.emit(bloc.state.copyWith(transaction: transaction));
        bloc.add(const TransactionFormEvent.setBill());
      },
      expect: () => [
        //first emit is call to change state of bloc. No exist in real app.
        transactionFormBloc.state.copyWith(
          showErrorMessages: false,
          isSubmitting: false,
          transactionFailureOrSuccessOption: none(),
          transaction: transaction,
        ),

        transactionFormBloc.state.copyWith(
          showErrorMessages: false,
          isSubmitting: false,
          transactionFailureOrSuccessOption: none(),
          transaction: transaction.copyWith(currencyBill: CurrencyBill(75)),
        ),
      ],
    );

    blocTest<TransactionFormBloc, TransactionFormState>(
      'wrong passed data',
      build: () {
        when(mockTransRepo.create(transactionError)).thenAnswer((_) async => right(unit));
        when(mockInternetChecker.hasConnection()).thenAnswer((_) => Future.value(true));
        return transactionFormBloc;
      },
      act: (bloc) {
        bloc.emit(bloc.state.copyWith(transaction: transactionError));
        bloc.add(const TransactionFormEvent.setBill());
      },
      expect: () => [
        //first emit is call to change state of bloc. No exist in real app.
        transactionFormBloc.state.copyWith(
          showErrorMessages: false,
          isSubmitting: false,
          transactionFailureOrSuccessOption: none(),
          transaction: transactionError,
        ),
        transactionFormBloc.state.copyWith(
          isSubmitting: false,
          showErrorMessages: false,
          transaction: transactionError.copyWith(currencyBill: CurrencyBill(0)),
          transactionFailureOrSuccessOption: const None(),
        ),
      ],
    );
    blocTest<TransactionFormBloc, TransactionFormState>(
      'correct passed data, but server error',
      build: () {
        when(mockTransRepo.create(transaction)).thenAnswer((_) async => const Left(TransactionFailure.unexpected()));
        when(mockInternetChecker.hasConnection()).thenAnswer((_) => Future.value(true));
        return transactionFormBloc;
      },
      act: (bloc) {
        bloc.emit(bloc.state.copyWith(transaction: transaction));
        bloc.add(const TransactionFormEvent.transactionConfirmed());
      },
      expect: () => [
        //first emit is call to change state of bloc. No exist in real app.
        transactionFormBloc.state.copyWith(
          showErrorMessages: false,
          isSubmitting: false,
          transactionFailureOrSuccessOption: none(),
          transaction: transaction,
        ),
        transactionFormBloc.state.copyWith(
          isSubmitting: true,
          showErrorMessages: false,
          transaction: transaction,
          transactionFailureOrSuccessOption: none(),
        ),
        transactionFormBloc.state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          transaction: transaction,
          transactionFailureOrSuccessOption: const Some(
            Left(TransactionFailure.unexpected()),
          ),
        ),
      ],
    );
  });
  group('set date', () {
    blocTest<TransactionFormBloc, TransactionFormState>(
      'should change datetime',
      build: () {
        return transactionFormBloc;
      },
      act: (bloc) {
        bloc.emit(bloc.state.copyWith(
            transaction: transaction.copyWith(
                dateAcceptation: DateCantor.fromDateTime(dateTime),
                dateReservation: DateCantor.fromDateTime(dateTime))));
      },
      expect: () => [
        transactionFormBloc.state.copyWith(
          isSubmitting: false,
          showErrorMessages: false,
          transaction: transaction.copyWith(
              dateAcceptation: DateCantor.fromDateTime(dateTime), dateReservation: DateCantor.fromDateTime(dateTime)),
          transactionFailureOrSuccessOption: none(),
        ),
      ],
    );
  });
  group('reset', () {
    blocTest<TransactionFormBloc, TransactionFormState>(
      'should reset state',
      build: () {
        return transactionFormBloc;
      },
      act: (bloc) {
        bloc.emit(
          bloc.state.copyWith(
            transaction: Transaction(
              uId: UniqueId.fromUniqueString('1234'),
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
          ),
        );
      },
      expect: () => [
        transactionFormBloc.state.copyWith(
          transaction: Transaction(
            uId: UniqueId.fromUniqueString('1234'),
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
        )
      ],
    );
  });
  group('exchange rate selected', () {
    blocTest<TransactionFormBloc, TransactionFormState>(
      'correct rate selected',
      build: () {
        return transactionFormBloc;
      },
      act: (bloc) {
        bloc.emit(bloc.state.copyWith(transaction: transaction));
        bloc.add(TransactionFormEvent.exchangeRateSelected(exchangeRate));
      },
      expect: () => [
        //first emit is call to change state of bloc. No exist in real app.
        transactionFormBloc.state.copyWith(
          showErrorMessages: false,
          isSubmitting: false,
          transactionFailureOrSuccessOption: none(),
          transaction: transaction,
        ),
        transactionFormBloc.state.copyWith(
          isSubmitting: false,
          showErrorMessages: false,
          transaction: transaction.copyWith(
              currency: exchangeRate.currency, priceBuy: exchangeRate.priceBuy, priceSell: exchangeRate.priceSell),
          transactionFailureOrSuccessOption: none(),
        ),
      ],
    );
  });
  group('transaction type selected', () {
    blocTest<TransactionFormBloc, TransactionFormState>(
      'correct rate selected',
      build: () {
        return transactionFormBloc;
      },
      act: (bloc) {
        bloc.emit(bloc.state.copyWith(transaction: transaction));
        bloc.add(TransactionFormEvent.transactionTypeSelected(TransactionType.fromEnum(EnumTransactionType.sell)));
      },
      expect: () => [
        //first emit is call to change state of bloc. No exist in real app.
        transactionFormBloc.state.copyWith(
          showErrorMessages: false,
          isSubmitting: false,
          transactionFailureOrSuccessOption: none(),
          transaction: transaction,
        ),
        transactionFormBloc.state.copyWith(
          isSubmitting: false,
          showErrorMessages: false,
          transaction: transaction.copyWith(transactionType: TransactionType.fromEnum(EnumTransactionType.sell)),
          transactionFailureOrSuccessOption: none(),
        ),
      ],
    );
  });
}
