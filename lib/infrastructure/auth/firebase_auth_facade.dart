import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/domain/auth/auth_constants.dart';
import 'package:kantor_tukan/domain/auth/auth_failure.dart';
import 'package:kantor_tukan/domain/auth/custom_user.dart';
import 'package:kantor_tukan/domain/auth/i_auth_facade.dart';
import 'package:kantor_tukan/domain/auth/value_object.dart';
import 'package:kantor_tukan/infrastructure/auth/firebase_user_mapper.dart';

@prod
@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseUserMapper _firebaseUserMapper;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn, this._firebaseUserMapper);

  @override
  Future<Option<CustomUser>> getSignedInUser() async {
    User? user = _firebaseAuth.currentUser;
    return optionOf(_firebaseUserMapper.toDomain(user));
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: emailAddressStr, password: passwordStr);

      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == AuthConstants.emailInUse) {
        return const Left(AuthFailure.emailAlreadyInUse());
      } else {
        return const Left(AuthFailure.serverError());
      }
    } catch (_) {
      return const Left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: emailAddressStr, password: passwordStr);

      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == AuthConstants.invalidEmail ||
          e.code == AuthConstants.wrongPassword ||
          e.code == AuthConstants.userNotFount) {
        return const Left(AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return const Left(AuthFailure.serverError());
      }
    } catch (_) {
      return const Left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      var googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return const Left(AuthFailure.cancelledByUser());
      }

      var googleAuthentication = await googleUser.authentication;

      final OAuthCredential authCredential = GoogleAuthProvider.credential(
          accessToken: googleAuthentication.accessToken, idToken: googleAuthentication.idToken);

      await _firebaseAuth.signInWithCredential(authCredential);

      return const Right(unit);
    } on PlatformException catch (_) {
      return (const Left(AuthFailure.serverError()));
    } catch (_  ) {
      return const Left(AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOutGoogleAndFirebase() async {
    await _googleSignIn.signOut();
    await _firebaseAuth.signOut();
  }
}
