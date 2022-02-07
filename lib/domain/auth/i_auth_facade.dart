import 'package:dartz/dartz.dart';
import 'package:kantor_tukan/domain/auth/auth_failure.dart';
import 'package:kantor_tukan/domain/auth/value_object.dart';
import 'package:kantor_tukan/domain/auth/custom_user.dart';

abstract class IAuthFacade {
  Future<Option<CustomUser>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOutGoogleAndFirebase();
}
