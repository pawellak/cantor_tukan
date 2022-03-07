import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/timer/timer_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/appbar.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/body.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/settings.dart';

class TransactionPage extends StatefulWidget {
  static const routeName = '/transaction';

  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    _restartTransactionPageState(context);
    _startTimer(context);
    return WillPopScope(
      onWillPop: () {
        return _onWillPop(context);
      },
      child: const Scaffold(
        appBar: TransactionAppBar(),
        body: TransactionBody(),
      ),
    );
  }

  Future<bool> _onWillPop(BuildContext context) {
    return Settings().onWillPop(context);
  }

  void _restartTransactionPageState(BuildContext context) {
    context.read<TransactionFormBloc>().add(const TransactionFormEvent.reset());
  }

  void _startTimer(BuildContext context) {
    context.read<TimerBloc>().add(const TimerEvent.start());
  }

  @override
  void initState() {
    super.initState();
    Settings().allowOnlyForPortraitMode();
  }

  @override
  dispose() {
    Settings().allowForLandscapeAndPortraitMode();
    super.dispose();
  }
}
