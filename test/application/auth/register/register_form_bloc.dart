import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/application/auth/register/register_form_bloc.dart';
import 'package:kantor_tukan/domain/auth/auth_failure.dart';
import 'package:kantor_tukan/domain/auth/i_auth_facade.dart';
import 'package:kantor_tukan/domain/auth/value_object.dart';
import 'package:kantor_tukan/domain/internet/i_internet_connection_checker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../domain/auth/i_auth_facade_test.mocks.dart';
import '../../exchange_rate/exchange_rate_bloc_test.mocks.dart';

@GenerateMocks([IAuthFacade])
@GenerateMocks([IInternetConnectionChecker])
void main() {
  late MockIAuthFacade mockIAuthFacade;
  late RegisterFormBloc registerFormBloc;
  late MockIInternetConnectionChecker mockInternetChecker;

  const correctEmail = 'test@test.pl';
  //const incorrectEmail = '';
  const correctPassword = '123456';
  const incorrectPassword = '';

  setUp(
    () {
      mockIAuthFacade = MockIAuthFacade();
      mockInternetChecker = MockIInternetConnectionChecker();
      mockInternetChecker = MockIInternetConnectionChecker();
      registerFormBloc = RegisterFormBloc(mockIAuthFacade, mockInternetChecker);
    },
  );

  group('user register with email and password', () {
    blocTest<RegisterFormBloc, RegisterFormState>(
      'should register user',
      build: () {
        when(mockInternetChecker.hasConnection()).thenAnswer((realInvocation) => Future.value(true));

        when(mockIAuthFacade.registerWithEmailAndPassword(
                emailAddress: EmailAddress(correctEmail), password: Password(correctPassword)))
            .thenAnswer((realInvocation) => Future.value(const Right(unit)));

        registerFormBloc.add(const RegisterFormEvent.emailChanged(correctEmail));
        registerFormBloc.add(const RegisterFormEvent.passwordChanged(correctPassword));
        registerFormBloc.add(const RegisterFormEvent.passwordRepeatChanged(correctPassword));

        return registerFormBloc;
      },
      act: (bloc) {
        bloc.add(const RegisterFormEvent.registerWithEmailAndPasswordPressed());
      },
      expect: () => [
        registerFormBloc.state.copyWith(
            emailAddress: EmailAddress(correctEmail),
            password: Password(incorrectPassword),
            passwordRepeat: Password(incorrectPassword),
            showErrorMessage: false,
            isSubmitting: false,
            authFailureOrSuccessOption: none()),
        registerFormBloc.state.copyWith(
            emailAddress: EmailAddress(correctEmail),
            password: Password(correctPassword),
            passwordRepeat: Password(incorrectPassword),
            showErrorMessage: false,
            isSubmitting: false,
            authFailureOrSuccessOption: none()),
        registerFormBloc.state.copyWith(
            emailAddress: EmailAddress(correctEmail),
            password: Password(correctPassword),
            passwordRepeat: Password(correctPassword),
            showErrorMessage: false,
            isSubmitting: false,
            authFailureOrSuccessOption: none()),
        registerFormBloc.state.copyWith(
            emailAddress: EmailAddress(correctEmail),
            password: Password(correctPassword),
            passwordRepeat: Password(correctPassword),
            isSubmitting: true,
            showErrorMessage: false,
            authFailureOrSuccessOption: none()),
        registerFormBloc.state.copyWith(
            emailAddress: EmailAddress(correctEmail),
            password: Password(correctPassword),
            passwordRepeat: Password(correctPassword),
            isSubmitting: false,
            showErrorMessage: false,
            authFailureOrSuccessOption: optionOf(const Right(unit))),
      ],
    );



    blocTest<RegisterFormBloc, RegisterFormState>(
      'should not register user,no internet connection',
      build: () {
        when(mockInternetChecker.hasConnection()).thenAnswer((realInvocation) => Future.value(false));

        when(mockIAuthFacade.registerWithEmailAndPassword(
                emailAddress: EmailAddress(correctEmail), password: Password(correctPassword)))
            .thenAnswer((realInvocation) => Future.value(const Right(unit)));

        registerFormBloc.add(const RegisterFormEvent.emailChanged(correctEmail));
        registerFormBloc.add(const RegisterFormEvent.passwordChanged(correctPassword));
        registerFormBloc.add(const RegisterFormEvent.passwordRepeatChanged(correctPassword));

        return registerFormBloc;
      },
      act: (bloc) {
        bloc.add(const RegisterFormEvent.registerWithEmailAndPasswordPressed());
      },
      expect: () => [
        registerFormBloc.state.copyWith(
            emailAddress: EmailAddress(correctEmail),
            password: Password(incorrectPassword),
            passwordRepeat: Password(incorrectPassword),
            showErrorMessage: false,
            isSubmitting: false,
            authFailureOrSuccessOption: none()),
        registerFormBloc.state.copyWith(
            emailAddress: EmailAddress(correctEmail),
            password: Password(correctPassword),
            passwordRepeat: Password(incorrectPassword),
            showErrorMessage: false,
            isSubmitting: false,
            authFailureOrSuccessOption: none()),
        registerFormBloc.state.copyWith(
            emailAddress: EmailAddress(correctEmail),
            password: Password(correctPassword),
            passwordRepeat: Password(correctPassword),
            showErrorMessage: false,
            isSubmitting: false,
            authFailureOrSuccessOption: none()),
        registerFormBloc.state.copyWith(
            emailAddress: EmailAddress(correctEmail),
            password: Password(correctPassword),
            passwordRepeat: Password(correctPassword),
            showErrorMessage: false,
            isSubmitting: true,
            authFailureOrSuccessOption: none()),
        registerFormBloc.state.copyWith(
            emailAddress: EmailAddress(correctEmail),
            password: Password(correctPassword),
            passwordRepeat: Password(correctPassword),
            isSubmitting: false,
            showErrorMessage: false,
            authFailureOrSuccessOption: optionOf(const Left(AuthFailure.noInternet()))),
      ],
    );
  });
}
