import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/timer/timer_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';

import 'package:kantor_tukan/presentation/transaction/widgets/appbar.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/body.dart';

class TransactionPage extends StatelessWidget {
  static const routeName = '/transaction';

  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _restartTransactionPageState(context);
    _startTimer(context);
    return const Scaffold(
      appBar: TransactionAppBar(),
      body: TransactionBody(),
    );
  }

  void _restartTransactionPageState(BuildContext context) {
    context.read<TransactionFormBloc>().add(const TransactionFormEvent.reset());
  }

  void _startTimer(BuildContext context) {
    context.read<TimerBloc>().add(const TimerEvent.start());
  }
}
