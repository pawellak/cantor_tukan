import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/application/timer/timer_bloc.dart';
import 'package:kantor_tukan/domain/core/core_constants.dart';

void main() {
  late TimerBloc timerBloc;

  setUp(() {
    timerBloc = TimerBloc();
  });

  group(
    'timer',
    () {
      blocTest<TimerBloc, TimerState>(
        'start event emit state',
        build: () {
          return timerBloc;
        },
        act: (bloc) {
          bloc.add(const TimerEvent.start());
        },
        expect: () =>
            [timerBloc.state.copyWith(timeInSec: CoreConstants.timerDurationInSecTimer, running: true, done: false)],
      );
    },
  );
}
