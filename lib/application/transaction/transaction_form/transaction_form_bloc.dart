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

part 'transaction_form_event.dart';

part 'transaction_form_state.dart';

part 'transaction_form_bloc.freezed.dart';

@injectable
class TransactionFormBloc extends Bloc<TransactionFormEvent, TransactionFormState> {
  final ITransactionRepository _iTransactionRepository;

  TransactionFormBloc(this._iTransactionRepository) : super(TransactionFormState.initial()) {
    on<TransactionFormEvent>(
      (event, emit) {
        event.map(
          currencyValueChanged: _currencyValueChanged,
          transactionConfirmed: _transactionConfirmed,
          exchangeRateSelected: _exchangeRateSelected,
          transactionTypeSelected: _transactionTypeSelected,
        );
      },
    );
  }

  void _currencyValueChanged(_CurrencyValueChanged e) async {
    emit(state.copyWith(transaction: state.transaction.copyWith(currencyValue: e.currencyValue)));
  }

  void _transactionConfirmed(_TransactionConfirmed e) async {
    bool _showErrorMessage = true;
    Either<TransactionFailure, Unit>? _failureOrSuccess;

    final _transactionFailureOptions = state.transaction.failureOption;

    if (_transactionFailureOptions.isNone()) {
      emit(state.copyWith(isSubmitting: true, transactionFailureOrSuccessOption: none()));
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
}
