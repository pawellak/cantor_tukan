import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/exchange_form/exchange_rate_bloc.dart';
import 'package:kantor_tukan/domain/exchange_rate/cantor_remote_failure.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/error_snack_bar.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/list_table.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/list_title.dart';
import 'package:kantor_tukan/presentation/transaction/transaction_page.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:kantor_tukan/presentation/exchange_rate/constants.dart';

import '../../../application/transaction/transaction_form/transaction_form_bloc.dart';

class ExchangeRateForm extends StatelessWidget {
  const ExchangeRateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExchangeRateBloc, ExchangeRateState>(
      listener: _getListener,
      builder: _getBuilder,
    );
  }

  void _getListener(BuildContext context, ExchangeRateState state) {
    state.failureOrSuccessOption.fold(_getNone, (either) {
      either.fold((CantorRemoteFailure failure) {
        _getFailure(failure, context);
      }, (_) {
        _getSuccess(state, context);
      });
    });
  }

  Null _getNone() {}

  void _getFailure(CantorRemoteFailure failure, BuildContext context) {
    ErrorSnackBar().failure(failure, context);
  }

  void _getSuccess(ExchangeRateState state, BuildContext context) {
    if (state.isExchangeRateSelected) {
      _setTransactionExchangeRate(context, state);
      _navigateToTransactionPage(context);
    }
  }

  void _setTransactionExchangeRate(BuildContext context, ExchangeRateState state) {
    context.read<TransactionFormBloc>().add(
          TransactionFormEvent.exchangeRateSelected(state.exchangeRateSelected),
        );
  }

  void _navigateToTransactionPage(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(TransactionPage.routeName);
  }

  Widget _getBuilder(context, state) {
    return state.isSubmitting ? _isSubmitting() : _isFetched(state);
  }

  _isFetched(ExchangeRateState state) {
    //failure will be handled in listener
    if (_isSomeFailure(state)) return _isSubmitting();

    final KtList<ExchangeRate> exchangeRateList = state.exchangeRate;
    return Column(
      children: [
        _buildExchangeRateTitle(),
        _buildExchangeRateList(exchangeRateList),
      ],
    );
  }

  Expanded _buildExchangeRateTitle() => const Expanded(child: ListTitle());

  Expanded _buildExchangeRateList(KtList<ExchangeRate> exchangeRateList) {
    return Expanded(
      flex: Constants.exchangeRateListFlex,
      child: ListTable(items: exchangeRateList),
    );
  }

  _isSubmitting() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }

  bool _isSomeFailure(ExchangeRateState state) => state.showErrorMessages;
}
