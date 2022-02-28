import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kantor_tukan/application/no_internet/internet_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'no_internet_bloc_test.mocks.dart';

@GenerateMocks([InternetConnectionChecker])
void main() {
  late MockInternetConnectionChecker mockChecker;
  late NoInternetBloc noInternetBloc;

  setUp(() {
    mockChecker = MockInternetConnectionChecker();
    noInternetBloc = NoInternetBloc(mockChecker);
  });

  group('check state', () {
    blocTest<NoInternetBloc, NoInternetState>(
      'is internet connection',
      build: () {
        when(mockChecker.hasConnection).thenAnswer((_) async => true);

        return noInternetBloc;
      },
      act: (bloc) {
        bloc.add(const NoInternetEvent.checkConnection());
      },
      expect: () => [noInternetBloc.state.copyWith(isConnected: true)],
    );

    blocTest<NoInternetBloc, NoInternetState>(
      'is no internet connection',
      build: () {
        when(mockChecker.hasConnection).thenAnswer((_) async => false);

        return noInternetBloc;
      },
      act: (bloc) {
        bloc.add(const NoInternetEvent.checkConnection());
      },
      expect: () => [noInternetBloc.state.copyWith(isConnected: false)],
    );
  });
}
