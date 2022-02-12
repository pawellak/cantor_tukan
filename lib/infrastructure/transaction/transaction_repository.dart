import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart' as fs;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/domain/transaction/i_transaction_repository.dart';
import 'package:kantor_tukan/domain/transaction/transaction.dart';
import 'package:kantor_tukan/domain/transaction/transaction_failure.dart';
import 'package:kantor_tukan/infrastructure/transaction/transaction_dtos.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:kantor_tukan/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: ITransactionRepository)
class TransactionRepository implements ITransactionRepository {
  final fs.FirebaseFirestore _firebaseFirestore;

  TransactionRepository(this._firebaseFirestore);

  @override
  Stream<Either<TransactionFailure, KtList<Transaction>>> watchAll() async* {
    final fs.DocumentReference<Object?> userDoc = await _firebaseFirestore.userDocument();

    userDoc.transactionCollection
        .orderBy('dateReservation', descending: true)
        .snapshots()
        .map(
          (snapshot) => right(snapshot.docs.map((doc) => TransactionDto.fromFirestore(doc).toDomain()).toList()),
        )
        .handleError((error) {
      if (error is fs.FirebaseException && error.message!.contains('permission-denied')) {
        return left(const TransactionFailure.insufficientPermission());
      } else {
        left(const TransactionFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<TransactionFailure, KtList<Unit>>> create(Transaction transaction) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<TransactionFailure, KtList<Unit>>> delete(Transaction transaction) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Stream<Either<TransactionFailure, KtList<Transaction>>> watchAccepted() {
    // TODO: implement watchAccepted
    throw UnimplementedError();
  }

  @override
  Stream<Either<TransactionFailure, KtList<Transaction>>> watchDecline() {
    // TODO: implement watchDecline
    throw UnimplementedError();
  }

  @override
  Stream<Either<TransactionFailure, KtList<Transaction>>> watchPending() {
    // TODO: implement watchPending
    throw UnimplementedError();
  }
}
