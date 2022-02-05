import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:kantor_tukan/domain/auth/auth_failure.dart';
import 'package:kantor_tukan/domain/auth/i_auth_facade.dart';
import 'package:kantor_tukan/domain/auth/value_object.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../domain/auth/i_auth_facade_test.mocks.dart';

@GenerateMocks([IAuthFacade])
void main() {
  late MockIAuthFacade mockIAuthFacade;
  late SignInFormBloc signInFormBloc;
  const correctEmail = 'test@test.pl';
  const incorrectEmail = 'testtest.pl';
  const correctPassword = '123456';
  setUp(
    () {
      mockIAuthFacade = MockIAuthFacade();
      signInFormBloc = SignInFormBloc(mockIAuthFacade);
    },
  );

  blocTest<SignInFormBloc, SignInFormState>(
    'user passed email',
    build: () {
      return signInFormBloc;
    },
    act: (bloc) => bloc.add(
      const SignInFormEvent.emailChanged(correctEmail),
    ),
    expect: () => [
      signInFormBloc.state.copyWith(
        emailAddress: EmailAddress(correctEmail),
      )
    ],
  );

  blocTest<SignInFormBloc, SignInFormState>(
    'user passed password',
    build: () {
      return signInFormBloc;
    },
    act: (bloc) => bloc.add(
      const SignInFormEvent.passwordChanged(correctPassword),
    ),
    expect: () => [
      signInFormBloc.state.copyWith(
        password: Password(correctPassword),
      )
    ],
  );

  blocTest<SignInFormBloc, SignInFormState>(
    'should register user',
    build: () {
      when(mockIAuthFacade.registerWithEmailAndPassword(
              emailAddress: EmailAddress(correctEmail),
              password: Password(correctPassword)))
          .thenAnswer((realInvocation) => Future.value(const Right(unit)));

      var bloc = SignInFormBloc(mockIAuthFacade);

      bloc.add(const SignInFormEvent.emailChanged(correctEmail));
      bloc.add(const SignInFormEvent.passwordChanged(correctPassword));
      return bloc;
    },
    act: (bloc) {
      bloc.add(const SignInFormEvent.registerWithEmailAndPasswordPressed());
    },
    expect: () => [
      signInFormBloc.state.copyWith(
        emailAddress: EmailAddress(correctEmail),
      ),
      signInFormBloc.state.copyWith(
        emailAddress: EmailAddress(correctEmail),
        password: Password(correctPassword),
      ),
      signInFormBloc.state.copyWith(
        emailAddress: EmailAddress(correctEmail),
        password: Password(correctPassword),
        isSubmitting: true,
      ),
      signInFormBloc.state.copyWith(
          emailAddress: EmailAddress(correctEmail),
          password: Password(correctPassword),
          showErrorMessages: true,
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(const Right(unit)))
    ],
  );

  blocTest<SignInFormBloc, SignInFormState>(
    'should not register user',
    build: () {
      when(mockIAuthFacade.registerWithEmailAndPassword(
              emailAddress: EmailAddress(correctEmail),
              password: Password(correctPassword)))
          .thenAnswer((realInvocation) => Future.value(
              const Left(AuthFailure.invalidEmailAndPasswordCombination())));

      var bloc = SignInFormBloc(mockIAuthFacade);

      bloc.add(const SignInFormEvent.emailChanged(incorrectEmail));
      bloc.add(const SignInFormEvent.passwordChanged(correctPassword));
      return bloc;
    },
    act: (bloc) {
      bloc.add(const SignInFormEvent.registerWithEmailAndPasswordPressed());
    },
    expect: () => [
      signInFormBloc.state.copyWith(
        emailAddress: EmailAddress(incorrectEmail),
      ),
      signInFormBloc.state.copyWith(
        emailAddress: EmailAddress(incorrectEmail),
        password: Password(correctPassword),
      ),
      signInFormBloc.state.copyWith(
          emailAddress: EmailAddress(incorrectEmail),
          password: Password(correctPassword),
          isSubmitting: false,
          showErrorMessages: true),
    ],
  );
}
