import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/injection.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/appbar.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/exchange_rate_form.dart';
import '../../application/exchange_form/exchange_rate_bloc.dart';
import '../../application/timer/timer_bloc.dart';
import '../core/app_life_cycle.dart';

class ExchangeRatePage extends StatefulWidget {
  static const routeName = '/exchange-rate';

  const ExchangeRatePage({Key? key}) : super(key: key);

  @override
  State<ExchangeRatePage> createState() => _ExchangeRatePageState();
}

class _ExchangeRatePageState extends State<ExchangeRatePage> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    _addAppLifeCycleObserver();
  }

  void _addAppLifeCycleObserver() {
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    _startTimer(context);

    return BlocProvider(
      create: _fetchExchangeRate,
      child: _buildScaffoldWithWillPopScope(),
    );
  }

  void _startTimer(BuildContext context) {
    context.read<TimerBloc>().add(const TimerEvent.start());
  }

  ExchangeRateBloc _fetchExchangeRate(context) => getIt<ExchangeRateBloc>()..add(const ExchangeRateEvent.fetch());

  WillPopScope _buildScaffoldWithWillPopScope() {
    return WillPopScope(
      onWillPop: () async => false,
      child: _buildScaffold(),
    );
  }

  Scaffold _buildScaffold() {
    return const Scaffold(
      appBar: ExchangeRateAppBar(),
      body: ExchangeRateForm(),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    AppLifeCycle().call(context, state);
  }

  @override
  dispose() {
    _removeAppLifeCycleObserver();
    super.dispose();
  }

  void _removeAppLifeCycleObserver() {
    WidgetsBinding.instance!.removeObserver(this);
  }
}
