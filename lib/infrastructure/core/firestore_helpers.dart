import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:kantor_tukan/domain/auth/i_auth_facade.dart';
import 'package:kantor_tukan/domain/core/core_constants.dart';
import 'package:kantor_tukan/domain/core/errors.dart';
import 'package:kantor_tukan/domain/core/firebase_const.dart';
import 'package:kantor_tukan/injection.dart';

extension FirestoreSetToken on FirebaseFirestore {
  Future<void> setCloudToken() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    var token = await FirebaseMessaging.instance.getToken();

    return FirebaseFirestore.instance
        .collection(FirebaseConst.docUsers)
        .doc(user.id.getOrCrash())
        .set({FirebaseConst.userToken: token});
  }
}

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection(FirebaseConst.docUsers).doc(user.id.getOrCrash());
  }
}

extension FirestoreQueueX on FirebaseFirestore {
  Future<void> setQueue(String? id) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection(FirebaseConst.docQueue)
        .doc(id)
        .set({CoreConstants.fireBaseQueueUid: user.id.getOrCrash()});
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get transactionCollection {
    return collection(FirebaseConst.docTransactions);
  }
}
