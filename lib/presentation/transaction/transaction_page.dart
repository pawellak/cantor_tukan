import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_form/transaction_form_bloc.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/appbar.dart';
import 'package:kantor_tukan/presentation/transaction/widgets/body.dart';

import '../core/app_life_cycle.dart';
import '../exchange_rate/exchange_rate_page.dart';

class TransactionPage extends StatefulWidget {
  static const routeName = '/transaction';

  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    _restartTransactionPageState(context);

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

  Future<bool> _onWillPop(BuildContext context) async {
    Navigator.of(context).popAndPushNamed(ExchangeRatePage.routeName);
    return false;
  }

  void _restartTransactionPageState(BuildContext context) {
    context.read<TransactionFormBloc>().add(const TransactionFormEvent.reset());
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    AppLifeCycle().call(context, state);
  }

  @override
  dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }
}
