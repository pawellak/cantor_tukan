import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/timer/timer_bloc.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';


const oneHundredPercent = 1;

class ExchangeRateTimer extends StatelessWidget {
  const ExchangeRateTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildTimerHandler(context);
  }

  BlocConsumer _buildTimerHandler(BuildContext context) {
    return BlocConsumer<TimerBloc, TimerState>(
      listener: _getListener,
      builder: _getBuilder,
    );
  }

  void _getListener(BuildContext context, TimerState state) {
    if (_isStateDone(state)) {
      _navigateToExchangeRatePage(context);
    }
  }

  Widget _getBuilder(BuildContext context, TimerState state) {
    return const SizedBox();
  }

  bool _isStateDone(TimerState state) => state.done;

  void _navigateToExchangeRatePage(BuildContext context) {
    Navigator.of(context).popAndPushNamed(ExchangeRatePage.routeName);
  }
}
