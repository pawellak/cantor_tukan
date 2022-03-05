// ignore_for_file: invalid_use_of_visible_for_testing_member
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kantor_tukan/domain/core/core_constants.dart';
import 'package:kantor_tukan/domain/core/ticker.dart';

part 'timer_event.dart';

part 'timer_state.dart';

part 'timer_bloc.freezed.dart';

const _durationInSec = CoreConstants.timerDurationInSecTimer;
const _finishTime = CoreConstants.finishTimeTimer;

StreamSubscription<int>? _tickerSubscription;

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc() : super(TimerState.initial(_durationInSec)) {
    on<TimerEvent>((event, emit) {
      event.map(start: _mapStart);
    });
  }

  void _mapStart(_Start start) {
    _cancelTimerIfRunning();
    _emitStartTimer();
    final ticker = _getTicker();
    _tickerSubscription = _handleTicker(ticker);
  }

  void _cancelTimerIfRunning() {
    _tickerSubscription?.cancel();
  }

  void _emitDoneTimer(int timeInMs) {
    emit(TimerState(timeInSec: timeInMs, running: false, done: true));
  }

  Stream<int> _getTicker() => Ticker().tick(ticks: _durationInSec);

  StreamSubscription<int> _handleTicker(Stream<int> ticker) {
    return ticker.listen((timeInMs) {
      if (_isTimerFinish(timeInMs)) {
        _emitDoneTimer(timeInMs);
      } else {
        _emitRunningTimer(timeInMs);
      }
    });
  }

  void _emitRunningTimer(int timeInMs) {
    emit(TimerState(timeInSec: timeInMs, running: true, done: false));
  }

  void _emitStartTimer() {
    emit(const TimerState(timeInSec: _durationInSec, running: true, done: false));
  }

  bool _isTimerFinish(int timeInSec) => timeInSec == _finishTime;
}
