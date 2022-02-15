import 'package:cloud_firestore/cloud_firestore.dart' as fs;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/domain/core/enums.dart';
import 'package:kantor_tukan/domain/core/firebase_const.dart';
import 'package:kantor_tukan/domain/transaction/i_transaction_repository.dart';
import 'package:kantor_tukan/domain/transaction/transaction.dart';
import 'package:kantor_tukan/domain/transaction/transaction_failure.dart';
import 'package:kantor_tukan/infrastructure/transaction/transaction_dtos.dart';
import 'package:kt_dart/kt.dart';
import 'package:kantor_tukan/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: ITransactionRepository)
class TransactionRepository implements ITransactionRepository {
  final fs.FirebaseFirestore _firebaseFirestore;

  TransactionRepository(this._firebaseFirestore);

  @override
  Stream<Either<TransactionFailure, KtList<Transaction>>> watchAll() async* {
    yield* _transactions();
  }

  @override
  Stream<Either<TransactionFailure, KtList<Transaction>>> watchAccepted() async* {
    yield* transactionsFiltered(EnumTransactionStatus.accepted);
  }

  @override
  Stream<Either<TransactionFailure, KtList<Transaction>>> watchDecline() async* {
    yield* transactionsFiltered(EnumTransactionStatus.decline);
  }

  @override
  Stream<Either<TransactionFailure, KtList<Transaction>>> watchPending() async* {
    yield* transactionsFiltered(EnumTransactionStatus.pending);
  }

  @override
  Future<Either<TransactionFailure, Unit>> create(Transaction transaction) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final transactionDto = TransactionDto.fromDomain(transaction);
      await userDoc.transactionCollection.doc(transactionDto.uid).set(transactionDto.toJson());
      return right(unit);
    } on fs.FirebaseException catch (e) {
      return _transactionError(e);
    }
  }

  @override
  Future<Either<TransactionFailure, Unit>> delete(Transaction transaction) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final transactionId = transaction.uId.getOrCrash();
      await userDoc.transactionCollection.doc(transactionId).delete();
      return right(unit);
    } on fs.FirebaseException catch (e) {
      return _transactionError(e);
    }
  }

  Stream<Either<TransactionFailure, KtList<Transaction>>> _transactions() async* {
    final userDoc = await _userDoc();
    yield* userDoc.transactionCollection
        .orderBy(FirebaseConst.orderTransactionsBy, descending: true)
        .snapshots()
        .map(
          (snapshot) => right<TransactionFailure, KtList<Transaction>>(
              snapshot.docs.map((doc) => TransactionDto.fromFirestore(doc).toDomain()).toImmutableList()),
        )
        .handleError(_transactionError);
  }

  Stream<Either<TransactionFailure, KtList<Transaction>>> transactionsFiltered(
      EnumTransactionStatus enumTransactionStatus) async* {
    final userDoc = await _userDoc();
    yield* userDoc.transactionCollection
        .orderBy(FirebaseConst.orderTransactionsBy, descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map((doc) => TransactionDto.fromFirestore(doc).toDomain()),
        )
        .map((transaction) => right<TransactionFailure, KtList<Transaction>>(transaction
            .where((element) => element.transactionStatus.getOrCrash() == enumTransactionStatus)
            .toImmutableList()))
        .handleError(_transactionError);
  }

  Future<fs.DocumentReference<Object?>> _userDoc() async {
    final fs.DocumentReference<Object?> userDoc = await _firebaseFirestore.userDocument();
    return userDoc;
  }

  _transactionError(error) {
    if (isErrorPermissionDenied(error)) {
      return left(const TransactionFailure.insufficientPermission());
    } else if (isErrorDataNotFound(error)) {
      return left(const TransactionFailure.insufficientPermission());
    } else {
      return left(const TransactionFailure.unexpected());
    }
  }

  bool isErrorDataNotFound(error) =>
      error is fs.FirebaseException && error.message!.contains(FirebaseConst.errorNotFound);

  bool isErrorPermissionDenied(error) =>
      error is fs.FirebaseException && error.message!.contains(FirebaseConst.errorPermissionDenied);
}
