import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

class TransactionPage extends StatelessWidget {
  static const routeName = '/transaction';

  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.appBarTitle)),
      body: _body(),
    );
  }

  BlocConsumer _body() {
    return BlocConsumer<TransactionFormBloc, TransactionFormState>(
      listener: (context, state) {
        // state.failureOrSuccessOption.fold(
        //       () {},
        //       (either) {
        //     either.fold(
        //           (failure) {
        //         ErrorSnackBar().call(state, context);
        //       },
        //           (_) {
        //         if (state.isExchangeRateSelected) {
        //           context
        //               .read<TransactionFormBloc>()
        //               .add(TransactionFormEvent.exchangeRateSelected(state.exchangeRateSelected));
        //           Navigator.of(context).pushNamed(TransactionPage.routeName);
        //         }
        //       },
        //     );
        //   },
        // );
      },
      builder: (context, state) {
        final price = state.transaction.priceBuy.getOrCrash();

        return Center(child: Text(price.toStringAsFixed(2)));
      },
    );
  }
}
