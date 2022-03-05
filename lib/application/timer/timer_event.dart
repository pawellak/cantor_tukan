part of 'timer_bloc.dart';

@freezed
abstract class TimerEvent with _$TimerEvent {
  const factory TimerEvent.start() = _Start;
}
