part of 'timer_bloc.dart';

@freezed
abstract class TimerState with _$TimerState {
  const factory TimerState({required int timeInSec, required bool running, required bool done}) = _TimerState;
  factory TimerState.initial(int timeS) => TimerState(timeInSec: timeS, running: false, done: false);
}
