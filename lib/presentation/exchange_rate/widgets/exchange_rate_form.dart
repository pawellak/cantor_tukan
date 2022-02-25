import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/exchange_form/exchange_rate_bloc.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/error_snack_bar.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/list_table.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/list_title.dart';
import 'package:kantor_tukan/presentation/transaction/transaction_page.dart';
import 'package:kt_dart/src/collection/kt_list.dart';

import '../../../application/transaction/transaction_form/transaction_form_bloc.dart';

class ExchangeRateForm extends StatelessWidget {
  const ExchangeRateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExchangeRateBloc, ExchangeRateState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                ErrorSnackBar().failure(failure, context);
              },
              (_) {
                if (state.isExchangeRateSelected) {
                  context
                      .read<TransactionFormBloc>()
                      .add(TransactionFormEvent.exchangeRateSelected(state.exchangeRateSelected));
                  Navigator.of(context).pushNamed(TransactionPage.routeName);
                }
              },
            );
          },
        );
      },
      builder: (context, state) {
        return state.isSubmitting ? _isSubmitting() : _isFetched(state);
      },
    );
  }

  _isSubmitting() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(child: CircularProgressIndicator()),
      ],
    );
  }

  _isFetched(ExchangeRateState state) {
    final KtList<ExchangeRate> exchangeRateList = state.exchangeRate;
    return Column(
      children: [
        const Expanded(child: ListTitle()),
        Expanded(
          flex: 10,
          child: ListTable(items: exchangeRateList),
        ),
      ],
    );
  }
}
