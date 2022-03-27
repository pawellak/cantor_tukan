import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kantor_tukan/domain/auth/value_object.dart';
import 'package:kantor_tukan/infrastructure/auth/firebase_auth_facade.dart';
import 'package:kantor_tukan/infrastructure/auth/firebase_user_mapper.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'firebase_auth_facade_test.mocks.dart';

@GenerateMocks([FirebaseAuth])
@GenerateMocks([GoogleSignIn])
@GenerateMocks([FirebaseUserMapper])
void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late MockGoogleSignIn mockGoogleSignIn;
  late FirebaseUserMapper mockFirebaseUserMapper;
  late FirebaseAuthFacade firebaseAuthFacade;

  const correctEmail = 'test@test.pl';
  const correctPassword = '123456';

  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockGoogleSignIn = MockGoogleSignIn();
    mockFirebaseUserMapper = FirebaseUserMapper();
    firebaseAuthFacade = FirebaseAuthFacade(
        mockFirebaseAuth, mockGoogleSignIn, mockFirebaseUserMapper);
  });

  test(
    'should pass email and password into signInWithEmailAndPassword ',
    () async {
      firebaseAuthFacade.signInWithEmailAndPassword(
          emailAddress: EmailAddress(correctEmail),
          password: Password(correctPassword));

      verify(mockFirebaseAuth.signInWithEmailAndPassword(
          password: correctPassword, email: correctEmail));
    },
  );

  test(
    'should pass email and password into registerWithEmailAndPassword ',
    () async {
      firebaseAuthFacade.registerWithEmailAndPassword(
          emailAddress: EmailAddress(correctEmail),
          password: Password(correctPassword));

      verify(mockFirebaseAuth.createUserWithEmailAndPassword(
          password: correctPassword, email: correctEmail));
    },
  );

  test(
    'should call signIn google method ',
    () async {
      firebaseAuthFacade.signInWithGoogle();
      verify(mockGoogleSignIn.signIn());
    },
  );

  test(
    'should call sign out method ',
    () async {
       // firebaseAuthFacade.signOutGoogleAndFirebase();
       // verify(mockGoogleSignIn.signOut());
    },
  );
}
