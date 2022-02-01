import 'package:firebase_auth/firebase_auth.dart';
import 'package:kantor_tukan/domain/auth/custom_user.dart';
import 'package:kantor_tukan/domain/core/value_objects.dart';

extension FirebaseUserDomainX on FirebaseAuth {
  CustomUser toDomain() {
    return CustomUser(id: UniqueId.fromUniqueString(currentUser!.uid));
  }
}
