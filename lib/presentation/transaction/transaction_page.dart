import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/calculation.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/confirm_button.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/error_snack_bar.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/input_form_rate.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/logo.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/radio_button.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/submitting.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/tip.dart';

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
    return BlocConsumer<TransactionFormBloc, TransactionFormState>(listener: (context, state) {
      _listener(state, context);
    }, builder: (context, state) {
      return _builder(context, state);
    });
  }

  void _listener(TransactionFormState state, BuildContext context) {
    state.transactionFailureOrSuccessOption.fold(
      () {},
      (either) {
        either.fold(
          (failure) {
            ErrorSnackBar().failure(failure, context);
          },
          (_) {
            context.read<TransactionFormBloc>().add(const TransactionFormEvent.reset());
            Navigator.of(context).pushNamedAndRemoveUntil(ExchangeRatePage.routeName, (Route route) => route.isFirst);
          },
        );
      },
    );
  }

  AutovalidateMode _isShowErrorMessageOn(TransactionFormState state) {
    return state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled;
  }

  Form _builder(BuildContext context, TransactionFormState state) {
    double maxHeightOfScreen = MediaQuery.of(context).size.height;
    return Form(
      autovalidateMode: _isShowErrorMessageOn(state),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: Constants.tenPixel),
            Logo(maxHeightOfScreen * Constants.proportionTwentyPercent),
            Tip(maxHeightOfScreen * Constants.proportionFifteenPercent),
            const RadioButton(),
            const InputFormRate(),
            Calculation(maxHeightOfScreen * Constants.proportionTenPercent),
            const ConfirmButton(),
            const Submitting(),
          ],
        ),
      ),
    );
  }
}
