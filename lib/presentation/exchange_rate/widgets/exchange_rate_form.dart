import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/exchange_form/exchange_rate_bloc.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/error_snack_bar.dart';

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
                ErrorSnackBar().call(state, context);
              },
              (_) {
                /// TOOD: Navigator.off.. next page
                // context
                //     .read<TransactionFormBloc>()
                //     .add(TransactionFormEvent.exchangeRateSelected(state.exchangeRate));
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Column(
          children: [
            state.isSubmitting ? const CircularProgressIndicator() : const SizedBox(),
            Text(state.exchangeRate.size.toString()),
            state.isSubmitting ?  SizedBox() :  Text(state.exchangeDate.updateDate.getOrCrash().toString()),
          ],
        );
      },
    );
  }
}
