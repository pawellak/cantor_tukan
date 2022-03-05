import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/internet/internet_bloc.dart';
import '../../../application/transaction/transaction_form/transaction_form_bloc.dart';
import '../../exchange_rate/exchange_rate_page.dart';
import '../../internet/internet_page.dart';

class TransactionListener {
  late final TransactionFormState state;
  late final BuildContext context;

  TransactionListener({required this.context, required this.state});

  void handle() {
    state.transactionFailureOrSuccessOption.fold(_getNone, (either) {
      either.fold((failure) {
        _getSomeError(context);
      }, (_) {
        _getSomeSuccess(context);
      });
    });
  }

  Null _getNone() {}

  void _getSomeError(BuildContext context) {
    _navigateToNoInternetPage(context);
  }

  void _getSomeSuccess(BuildContext context) {
    _navigateToSuccessPage(context);
  }

  void _navigateToNoInternetPage(BuildContext context) {
    context.read<InternetBloc>().add(const InternetEvent.setNoInternetConnection());
    Navigator.of(context).pushNamedAndRemoveUntil(InternetPage.routeName, (Route route) => route.isFirst);
  }

  void _navigateToSuccessPage(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(ExchangeRatePage.routeName, (Route route) => route.isFirst);
  }
}
