import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/application/internet/internet_bloc.dart';
import 'package:kantor_tukan/domain/internet/i_internet_connection_checker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'internet_bloc_test.mocks.dart';

@GenerateMocks([IInternetConnectionChecker])
void main() {
  late MockIInternetConnectionChecker mockChecker;
  late InternetBloc internetBloc;

  setUp(() {
    mockChecker = MockIInternetConnectionChecker();
    internetBloc = InternetBloc(mockChecker);
  });

  group('check state', () {
    blocTest<InternetBloc, InternetState>(
      'is internet connection',
      build: () {
        when(mockChecker.hasConnection()).thenAnswer((_) async => true);
        return internetBloc;
      },
      act: (bloc) {
        bloc.add(const InternetEvent.checkConnection());
      },
      expect: () => [
        internetBloc.state.copyWith(isConnected: false, isSubmitting: true),
        internetBloc.state.copyWith(isConnected: true, isSubmitting: false)
      ],
    );

    blocTest<InternetBloc, InternetState>(
      'is no internet connection',
      build: () {
        when(mockChecker.hasConnection()).thenAnswer((_) async => false);

        return internetBloc;
      },
      act: (bloc) {
        bloc.add(const InternetEvent.checkConnection());
      },
      expect: () => [
        internetBloc.state.copyWith(isConnected: false, isSubmitting: true),
        internetBloc.state.copyWith(isConnected: false, isSubmitting: false)
      ],
    );
  });
}
