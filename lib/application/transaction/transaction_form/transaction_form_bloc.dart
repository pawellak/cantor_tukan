// ignore_for_file: invalid_use_of_visible_for_testing_member
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/domain/core/currency_value.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/value_objects.dart';
import 'package:kantor_tukan/domain/transaction/i_transaction_repository.dart';
import 'package:kantor_tukan/domain/transaction/transaction.dart';
import 'package:kantor_tukan/domain/transaction/transaction_failure.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';
import '../../../domain/internet/i_internet_connection_checker.dart';

part 'transaction_form_event.dart';

part 'transaction_form_state.dart';

part 'transaction_form_bloc.freezed.dart';

@injectable
class TransactionFormBloc extends Bloc<TransactionFormEvent, TransactionFormState> {
  final ITransactionRepository _iTransactionRepository;
  final IInternetConnectionChecker _internetConnectionChecker;

  TransactionFormBloc(this._iTransactionRepository, this._internetConnectionChecker)
      : super(TransactionFormState.initial()) {
    on<TransactionFormEvent>(
      (event, emit) {
        event.map(
          currencyValueChanged: _currencyValueChanged,
          transactionConfirmed: _transactionConfirmed,
          exchangeRateSelected: _exchangeRateSelected,
          transactionTypeSelected: _transactionTypeSelected,
          setDate: _setDate,
          setBill: _setBill,
          reset: _reset,
        );
      },
    );
  }

  void _currencyValueChanged(_CurrencyValueChanged e) async {
    emit(state.copyWith(transaction: state.transaction.copyWith(currencyValue: e.currencyValue)));
  }




  void _transactionConfirmed(_TransactionConfirmed _) async {
    bool _showErrorMessage = true;
    Either<TransactionFailure, Unit>? _failureOrSuccess;
    bool _isNotInternetConnection = false;

    emit(state.copyWith(showErrorMessages: false, isSubmitting: true, transactionFailureOrSuccessOption: none()));
    _isNotInternetConnection = !await _internetConnectionChecker.hasConnection();
    final _transactionFailureOptions = state.transaction.failureOption;

    if (_isNotInternetConnection) {
      emit(
        state.copyWith(
            isSubmitting: false,
            showErrorMessages: _showErrorMessage,
            transactionFailureOrSuccessOption: optionOf(left(const TransactionFailure.noInternet()))),
      );
      return;
    }

    if (_transactionFailureOptions.isNone()) {
      final transaction = state.transaction;
      _failureOrSuccess = await _iTransactionRepository.create(transaction);

      if (_failureOrSuccess.isRight()) {
        _showErrorMessage = false;
      }
    }

    emit(
      state.copyWith(
          isSubmitting: false,
          showErrorMessages: _showErrorMessage,
          transactionFailureOrSuccessOption: optionOf(_failureOrSuccess)),
    );

  }

  void _exchangeRateSelected(_ExchangeRateSelected e) async {
    emit(state.copyWith(
        transaction: state.transaction.copyWith(
            currency: e.exchangeRate.currency,
            priceSell: e.exchangeRate.priceSell,
            priceBuy: e.exchangeRate.priceBuy)));
  }

  void _transactionTypeSelected(_TransactionTypeSelected e) async {
    emit(state.copyWith(transaction: state.transaction.copyWith(transactionType: e.transactionType)));
  }

  void _setDate(_SetDate e) async {
    _emitSetDate();
  }

  void _emitSetDate() {
    emit(state.copyWith(
        transaction: state.transaction.copyWith(
            dateAcceptation: DateCantor.fromDateTime(DateTime.now()),
            dateReservation: DateCantor.fromDateTime(DateTime.now()))));
  }

  void _setBill(_SetBill e) async {
    final typeOfTransaction = _getTransactionType();
    final currencyValue = _getCurrencyValue();
    double rate = _getRate(typeOfTransaction);
    double bill = _calculateBill(rate, currencyValue);
    emit(state.copyWith(transaction: state.transaction.copyWith(currencyBill: CurrencyBill(bill))));
  }

  void _reset(_Reset value) {
    emit(
      state.copyWith(
        transaction: Transaction(
          uId: UniqueId(),
          currency: Currency.fromEnum(state.transaction.currency.getOrCrash()),
          transactionType: TransactionType.fromEnum(EnumTransactionType.buy),
          transactionStatus: TransactionStatus.fromEnum(EnumTransactionStatus.pending),
          dateAcceptation: DateCantor.fromDateTime(DateTime(0)),
          dateReservation: DateCantor.fromDateTime(DateTime(0)),
          currencyValue: CurrencyValue(0),
          currencyBill: CurrencyBill(0),
          priceBuy: CurrencyPrice(state.transaction.priceBuy.getOrCrash()),
          priceSell: CurrencyPrice(state.transaction.priceSell.getOrCrash()),
        ),
        showErrorMessages: false,
        isSubmitting: false,
        transactionFailureOrSuccessOption: none(),
      ),
    );
  }

  EnumTransactionType _getTransactionType() => state.transaction.transactionType.getOrCrash();

  double _getCurrencyValue() =>
      state.transaction.currencyValue.value.fold((l) => TransactionConstants.zeroDouble, (r) => r);

  double _getRate(EnumTransactionType typeOfTransaction) {
    double rate;
    if (typeOfTransaction == EnumTransactionType.buy) {
      rate = state.transaction.priceBuy.value.fold((l) => TransactionConstants.zeroDouble, (r) => r);
    } else {
      rate = state.transaction.priceSell.value.fold((l) => TransactionConstants.zeroDouble, (r) => r);
    }
    return rate;
  }

  double _calculateBill(double rate, double currencyValue) => rate * currencyValue;
}
