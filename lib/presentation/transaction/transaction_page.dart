import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/timer/timer_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/presentation/splash/splash_page.dart';

import 'package:kantor_tukan/presentation/transaction/widgets/appbar.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/body.dart';
import 'package:flutter/services.dart';

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

  @override
  void initState() {
    super.initState();
    _allowOnlyForPortraitMode();
  }

  @override
  dispose() {
    _allowForLandscapeAndPortraitMode();
    super.dispose();
  }

  void _allowOnlyForPortraitMode() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void _allowForLandscapeAndPortraitMode() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
