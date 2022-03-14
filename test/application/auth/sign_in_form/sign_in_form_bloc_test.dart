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
  const incorrectEmail = '';
  const correctPassword = '123456';
  const incorrectPassword = '';

  setUp(() {
      mockIAuthFacade = MockIAuthFacade();
      signInFormBloc = SignInFormBloc(mockIAuthFacade);
    },
  );

  group('check correction of email and password class', () {
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
  });
  // group('user register with email and password', () {
  //   blocTest<SignInFormBloc, SignInFormState>(
  //     'should register user',
  //     build: () {
  //       when(mockIAuthFacade.registerWithEmailAndPassword(
  //               emailAddress: EmailAddress(correctEmail),
  //               password: Password(correctPassword)))
  //           .thenAnswer((realInvocation) => Future.value(const Right(unit)));
  //
  //       signInFormBloc.add(const SignInFormEvent.emailChanged(correctEmail));
  //       signInFormBloc
  //           .add(const SignInFormEvent.passwordChanged(correctPassword));
  //       return signInFormBloc;
  //     },
  //     act: (bloc) {
  //       bloc.add(const SignInFormEvent.registerWithEmailAndPasswordPressed());
  //     },
  //     expect: () => [
  //       signInFormBloc.state.copyWith(
  //           emailAddress: EmailAddress(correctEmail),
  //           password: Password(incorrectPassword),
  //           showErrorMessages: false,
  //           isSubmitting: false,
  //           authFailureOrSuccessOption: none()),
  //       signInFormBloc.state.copyWith(
  //           emailAddress: EmailAddress(correctEmail),
  //           password: Password(correctPassword),
  //           showErrorMessages: false,
  //           isSubmitting: false,
  //           authFailureOrSuccessOption: none()),
  //       signInFormBloc.state.copyWith(
  //           emailAddress: EmailAddress(correctEmail),
  //           password: Password(correctPassword),
  //           isSubmitting: true,
  //           showErrorMessages: false,
  //           authFailureOrSuccessOption: none()),
  //       signInFormBloc.state.copyWith(
  //           emailAddress: EmailAddress(correctEmail),
  //           password: Password(correctPassword),
  //           showErrorMessages: false,
  //           isSubmitting: false,
  //           authFailureOrSuccessOption: optionOf(const Right(unit)))
  //     ],
  //   );
  //
  //   blocTest<SignInFormBloc, SignInFormState>(
  //     'should not register user',
  //     build: () {
  //       when(mockIAuthFacade.registerWithEmailAndPassword(
  //               emailAddress: EmailAddress(incorrectEmail),
  //               password: Password(correctPassword)))
  //           .thenAnswer((realInvocation) => Future.value(
  //               const Left(AuthFailure.invalidEmailAndPasswordCombination())));
  //
  //       signInFormBloc.add(const SignInFormEvent.emailChanged(incorrectEmail));
  //       signInFormBloc
  //           .add(const SignInFormEvent.passwordChanged(correctPassword));
  //       return signInFormBloc;
  //     },
  //     act: (bloc) {
  //       bloc.add(const SignInFormEvent.registerWithEmailAndPasswordPressed());
  //     },
  //     expect: () => [
  //       signInFormBloc.state.copyWith(
  //         emailAddress: EmailAddress(incorrectEmail),
  //         password: Password(incorrectPassword),
  //         showErrorMessages: false,
  //         isSubmitting: false,
  //         authFailureOrSuccessOption: none(),
  //       ),
  //       signInFormBloc.state.copyWith(
  //           emailAddress: EmailAddress(incorrectEmail),
  //           password: Password(correctPassword),
  //           showErrorMessages: false,
  //           isSubmitting: false,
  //           authFailureOrSuccessOption: none()),
  //       signInFormBloc.state.copyWith(
  //           emailAddress: EmailAddress(incorrectEmail),
  //           password: Password(correctPassword),
  //           isSubmitting: false,
  //           showErrorMessages: true),
  //     ],
  //   );
  // });
  group('user sign in with email nad password',() {
    blocTest<SignInFormBloc, SignInFormState>(
      'should not sign in user',
      build: () {
        when(mockIAuthFacade.signInWithEmailAndPassword(
            emailAddress: EmailAddress(incorrectEmail),
            password: Password(incorrectPassword)))
            .thenAnswer((_) => Future.value(const Left(
            AuthFailure.invalidEmailAndPasswordCombination())));

        return signInFormBloc;
      },
      act: (bloc) {
        bloc.add(const SignInFormEvent.signInWithEmailAndPasswordPressed());
      },
      expect: () => [
        signInFormBloc.state.copyWith(
          emailAddress: EmailAddress(incorrectEmail),
          password: Password(incorrectPassword),
          showErrorMessages: true,
          isSubmitting: false,
          authFailureOrSuccessOption: none(),
        ),
      ],
    );

    blocTest<SignInFormBloc, SignInFormState>(
      'should sign in user',
      build: () {
        when(mockIAuthFacade.signInWithEmailAndPassword(
            emailAddress: EmailAddress(correctEmail),
            password: Password(correctPassword)))
            .thenAnswer((_) => Future.value(const Right(unit)));

        signInFormBloc.add(const SignInFormEvent.emailChanged(correctEmail));
        signInFormBloc
            .add(const SignInFormEvent.passwordChanged(correctPassword));

        return signInFormBloc;
      },
      act: (bloc) {
        bloc.add(const SignInFormEvent.signInWithEmailAndPasswordPressed());
      },
      expect: () => [
        signInFormBloc.state.copyWith(
            emailAddress: EmailAddress(correctEmail),
            password: Password(incorrectPassword),
            showErrorMessages: false,
            isSubmitting: false,
            authFailureOrSuccessOption: none()),
        signInFormBloc.state.copyWith(
            emailAddress: EmailAddress(correctEmail),
            password: Password(correctPassword),
            showErrorMessages: false,
            isSubmitting: false,
            authFailureOrSuccessOption: none()),
        signInFormBloc.state.copyWith(
            emailAddress: EmailAddress(correctEmail),
            password: Password(correctPassword),
            showErrorMessages: false,
            isSubmitting: true,
            authFailureOrSuccessOption: none()),
        signInFormBloc.state.copyWith(
            emailAddress: EmailAddress(correctEmail),
            password: Password(correctPassword),
            showErrorMessages: false,
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(const Right(unit))),
      ],
    );
  },);
  group('user sign in with google',() {
      blocTest<SignInFormBloc, SignInFormState>(
        'should login user',
        build: () {
          when(mockIAuthFacade.signInWithGoogle())
              .thenAnswer((_) => Future.value(const Right(unit)));

          return signInFormBloc;
        },
        act: (bloc) {
          bloc.add(const SignInFormEvent.signInWithGooglePressed());
        },
        expect: () => [
          signInFormBloc.state
              .copyWith(isSubmitting: true, authFailureOrSuccessOption: none()),
          signInFormBloc.state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: optionOf(const Right(unit))),
        ],
      );

      blocTest<SignInFormBloc, SignInFormState>(
        'should not sign in user',
        build: () {
          when(mockIAuthFacade.signInWithGoogle()).thenAnswer(
              (_) => Future.value(const Left(AuthFailure.cancelledByUser())));

          return signInFormBloc;
        },
        act: (bloc) {
          bloc.add(const SignInFormEvent.signInWithGooglePressed());
        },
        expect: () => [
          signInFormBloc.state
              .copyWith(isSubmitting: true, authFailureOrSuccessOption: none()),
          signInFormBloc.state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption:
                  optionOf(const Left(AuthFailure.cancelledByUser()))),
        ],
      );
    },);
}
