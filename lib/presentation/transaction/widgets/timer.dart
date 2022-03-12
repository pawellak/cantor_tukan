import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/timer/timer_bloc.dart';
import 'package:kantor_tukan/domain/core/core_constants.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';

const oneHundredPercent = 1;

class TransactionTimer extends StatelessWidget {
  const TransactionTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timer = _buildTimerHandler(context);
    return _decorate(timer);
  }

  BlocConsumer _buildTimerHandler(BuildContext context) {
    return BlocConsumer<TimerBloc, TimerState>(
      listener: _getListener,
      builder: _getBuilder,
    );
  }

  Expanded _decorate(BlocConsumer consumer) {
    return Expanded(
      flex: TransactionConstants.flexTimer,
      child: Padding(
        padding: _getPadding(),
        child: consumer,
      ),
    );
  }

  void _getListener(BuildContext context, TimerState state) {
    if (_isStateDone(state)) {
      _navigateToEchangeRatePage(context);
    }
  }

  Widget _getBuilder(BuildContext context, TimerState state) {
    double timeInSec = _getActualTimeInSec(state);
    double timeDuration = _getTimeDuration();
    double percent = _getPercent(timeInSec, timeDuration);
    return _buildIndicator(percent, context);
  }

  LinearPercentIndicator _buildIndicator(double percent, BuildContext context) {
    return LinearPercentIndicator(
        isRTL: true,
        curve: Curves.easeInToLinear,
        percent: percent,
        backgroundColor: _getBackgroundColor(context),
        progressColor: _getProgressColor(context));
  }

  bool _isStateDone(TimerState state) => state.done;

  void _navigateToEchangeRatePage(BuildContext context) {
    Navigator.of(context).popAndPushNamed(ExchangeRatePage.routeName);
  }

  double _getActualTimeInSec(TimerState state) => state.timeInSec.toDouble();

  double _getTimeDuration() => CoreConstants.timerDurationInSecTimer.toDouble();

  double _getPercent(double timeInSec, double timeDuration) {
    return timeInSec / timeDuration;
  }

  Color _getBackgroundColor(BuildContext context) => Theme.of(context).colorScheme.onError;

  Color _getProgressColor(BuildContext context) => Theme.of(context).colorScheme.onPrimary;

  EdgeInsets _getPadding() => const EdgeInsets.all(TransactionConstants.smallPadding);
}
