import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/domain/auth/auth_failure.dart';
import 'package:kantor_tukan/domain/auth/i_auth_facade.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'i_auth_facade_test.mocks.dart';

@GenerateMocks([IAuthFacade])
void main() {
  late MockIAuthFacade mockIAuthFacade;

  setUp(() {
    mockIAuthFacade = MockIAuthFacade();
  });

  group('register with email and password', () {
    test(
      'should return empty unit when register is success',
      () async {
        // arrange
        when(mockIAuthFacade.registerWithEmailAndPassword()).thenAnswer((_) => Future.value(const Right(unit)));
        // act
        var result = await mockIAuthFacade.registerWithEmailAndPassword();
        // assert
        verify(mockIAuthFacade.registerWithEmailAndPassword());
        expect(result, const Right(unit));
      },
    );

    test(
      'should return auth failure when email already in use',
      () async {
        // arrange
        when(mockIAuthFacade.registerWithEmailAndPassword())
            .thenAnswer((_) => Future.value(const Left(AuthFailure.emailAlreadyInUse())));
        // act
        var result = await mockIAuthFacade.registerWithEmailAndPassword();
        // assert
        verify(mockIAuthFacade.registerWithEmailAndPassword());
        expect(result, const Left(AuthFailure.emailAlreadyInUse()));
      },
    );

    test(
      'should return auth failure when user cancel transaction',
      () async {
        // arrange
        when(mockIAuthFacade.registerWithEmailAndPassword())
            .thenAnswer((_) => Future.value(const Left(AuthFailure.cancelledByUser())));
        // act
        var result = await mockIAuthFacade.registerWithEmailAndPassword();
        // assert
        verify(mockIAuthFacade.registerWithEmailAndPassword());
        expect(result, const Left(AuthFailure.cancelledByUser()));
      },
    );

    test(
      'should return auth failure when invalid email or invalid password',
      () async {
        // arrange
        when(mockIAuthFacade.registerWithEmailAndPassword())
            .thenAnswer((_) => Future.value(const Left(AuthFailure.invalidEmailAndPasswordCombination())));
        // act
        var result = await mockIAuthFacade.registerWithEmailAndPassword();
        // assert
        verify(mockIAuthFacade.registerWithEmailAndPassword());
        expect(result, const Left(AuthFailure.invalidEmailAndPasswordCombination()));
      },
    );

    test(
      'should return auth failure when server error',
      () async {
        // arrange
        when(mockIAuthFacade.registerWithEmailAndPassword())
            .thenAnswer((_) => Future.value(const Left(AuthFailure.serverError())));
        // act
        var result = await mockIAuthFacade.registerWithEmailAndPassword();
        // assert
        verify(mockIAuthFacade.registerWithEmailAndPassword());
        expect(result, const Left(AuthFailure.serverError()));
      },
    );
  });

  group('sign in with email and password', () {
    test(
      'should return empty unit when sign in is success',
      () async {
        // arrange
        when(mockIAuthFacade.signInWithEmailAndPassword()).thenAnswer((_) => Future.value(const Right(unit)));
        // act
        var result = await mockIAuthFacade.signInWithEmailAndPassword();
        // assert
        verify(mockIAuthFacade.signInWithEmailAndPassword());
        expect(result, const Right(unit));
      },
    );

    test(
      'should return auth failure when invalid Email or invalid Password',
      () async {
        // arrange
        when(mockIAuthFacade.signInWithEmailAndPassword())
            .thenAnswer((_) => Future.value(const Left(AuthFailure.invalidEmailAndPasswordCombination())));
        // act
        var result = await mockIAuthFacade.signInWithEmailAndPassword();
        // assert
        verify(mockIAuthFacade.signInWithEmailAndPassword());
        expect(result, const Left(AuthFailure.invalidEmailAndPasswordCombination()));
      },
    );

    test(
      'should return auth failure when server error',
      () async {
        // arrange
        when(mockIAuthFacade.signInWithEmailAndPassword())
            .thenAnswer((_) => Future.value(const Left(AuthFailure.serverError())));
        // act
        var result = await mockIAuthFacade.signInWithEmailAndPassword();
        // assert
        verify(mockIAuthFacade.signInWithEmailAndPassword());
        expect(result, const Left(AuthFailure.serverError()));
      },
    );
  });

  group('sign in with google', () {
    test(
      'should return empty unit when sign in is success',
      () async {
        // arrange
        when(mockIAuthFacade.signInWithGoogle()).thenAnswer((_) => Future.value(const Right(unit)));
        // act
        var result = await mockIAuthFacade.signInWithGoogle();
        // assert
        verify(mockIAuthFacade.signInWithGoogle());
        expect(result, const Right(unit));
      },
    );

    test(
      'should return auth failure when user cancel sign in process',
      () async {
        // arrange
        when(mockIAuthFacade.signInWithGoogle())
            .thenAnswer((_) => Future.value(const Left(AuthFailure.cancelledByUser())));
        // act
        var result = await mockIAuthFacade.signInWithGoogle();
        // assert
        verify(mockIAuthFacade.signInWithGoogle());
        expect(result, const Left(AuthFailure.cancelledByUser()));
      },
    );

    test(
      'should return auth failure when server failure',
      () async {
        // arrange
        when(mockIAuthFacade.signInWithGoogle()).thenAnswer((_) => Future.value(const Left(AuthFailure.serverError())));
        // act
        var result = await mockIAuthFacade.signInWithGoogle();
        // assert
        verify(mockIAuthFacade.signInWithGoogle());
        expect(result, const Left(AuthFailure.serverError()));
      },
    );
  });
}
