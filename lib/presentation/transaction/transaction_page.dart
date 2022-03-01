import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/domain/transaction/transaction_failure.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/appbar.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/calculation.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/confirm_button.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/error_snack_bar.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/input_form_rate.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/logo.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/radio_button.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/submitting.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/tip.dart';

import '../../application/transaction/transaction_form/size_widget.dart';

class TransactionPage extends StatelessWidget {
  static const routeName = '/transaction';

  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TransactionAppBar(),
      body: _getBody(),
    );
  }

  BlocConsumer _getBody() {
    return BlocConsumer<TransactionFormBloc, TransactionFormState>(listener: _getListener, builder: _getBuilder);
  }

  void _getListener(BuildContext context, TransactionFormState state) {
    state.transactionFailureOrSuccessOption.fold(_getNone, (either) {
      either.fold((failure) {
        _getSomeError(failure, context);
      }, (_) {
        _getSomeSuccess(context);
      });
    });
  }

  Null _getNone() {}

  void _getSomeError(TransactionFailure failure, BuildContext context) {
    ErrorSnackBar().failure(failure, context);
  }

  void _getSomeSuccess(BuildContext context) {
    _resetTransactionState(context);
    _navigateToSuccessPage(context);
  }

  void _resetTransactionState(BuildContext context) {
    context.read<TransactionFormBloc>().add(const TransactionFormEvent.reset());
  }

  void _navigateToSuccessPage(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(ExchangeRatePage.routeName, (Route route) => route.isFirst);
  }

  Widget _getBuilder(context, state) {
    double pageHeight = _getHeightOfScreen(context);
    return Form(
      autovalidateMode: _isShowErrorMessageOn(state),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildFreeSpace(),
            Logo(SizeWidget(pageHeight).logoHeight()),
            Tip(SizeWidget(pageHeight).tipHeight()),
            const RadioButton(),
            const InputFormRate(),
            Calculation(SizeWidget(pageHeight).calculationHeight()),
            const ConfirmButton(),
            const Submitting(),
          ],
        ),
      ),
    );
  }

  SizedBox _buildFreeSpace() => const SizedBox(height: Constants.tenPixel);

  AutovalidateMode _isShowErrorMessageOn(TransactionFormState state) {
    return state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled;
  }

  double _getHeightOfScreen(context) => MediaQuery.of(context).size.height;
}
