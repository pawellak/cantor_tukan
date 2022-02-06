import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/application/auth/app_auth_bloc.dart';
import 'package:kantor_tukan/domain/auth/custom_user.dart';
import 'package:kantor_tukan/domain/auth/i_auth_facade.dart';
import 'package:kantor_tukan/domain/core/value_objects.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../domain/auth/i_auth_facade_test.mocks.dart';

@GenerateMocks([IAuthFacade])
void main() {
  late MockIAuthFacade mockIAuthFacade;

  late CustomUser customUser;

  setUp(() {
    mockIAuthFacade = MockIAuthFacade();
    customUser = CustomUser(id: UniqueId.fromUniqueString('uniqueIdStr'));
  });

  group(
    'user authenticated',
    () {
      blocTest<AppAuthBloc, AppAuthState>(
        'should emit user authenticated',
        build: () {
          when(mockIAuthFacade.getSignedInUser())
              .thenAnswer((_) async => Future.value(optionOf(customUser)));
          return AppAuthBloc(mockIAuthFacade);
        },
        act: (bloc) => bloc.add(const AppAuthEvent.authCheckRequested()),
        expect: () => [
          const AppAuthState.authenticated(),
        ],
      );

      blocTest<AppAuthBloc, AppAuthState>(
        'should emit user unauthenticated',
        build: () {
          when(mockIAuthFacade.getSignedInUser())
              .thenAnswer((_) async => Future.value(optionOf(null)));
          return AppAuthBloc(mockIAuthFacade);
        },
        act: (bloc) => bloc.add(const AppAuthEvent.authCheckRequested()),
        expect: () => [
          const AppAuthState.unauthenticated(),
        ],
      );
    },
  );

  group(
    'sign out',
    () {
      blocTest<AppAuthBloc, AppAuthState>(
        'should emit user unauthenticated after user sign out',
        build: () {
          return AppAuthBloc(mockIAuthFacade);
        },
        act: (bloc) => bloc.add(const AppAuthEvent.signedOut()),
        expect: () => [
          const AppAuthState.unauthenticated(),
        ],
      );
    },
  );
}
