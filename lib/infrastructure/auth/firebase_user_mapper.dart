import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/domain/auth/custom_user.dart';
import 'package:kantor_tukan/domain/core/value_objects.dart';

@lazySingleton
class FirebaseUserMapper {
  CustomUser? toDomain(User? user) {
    return user == null
        ? null
        : CustomUser(
            id: UniqueId.fromUniqueString(user.uid),
          );
  }
}
