import 'package:dartz/dartz.dart';
import 'package:kantor_tukan/domain/transaction/transaction.dart';
import 'package:kt_dart/kt.dart';

import 'transaction_failure.dart';

abstract class ITransactionRepository {

  Stream<Either<TransactionFailure,KtList<Transaction>>> watchAll();
  Stream<Either<TransactionFailure,KtList<Transaction>>> watchAccepted();
  Stream<Either<TransactionFailure,KtList<Transaction>>> watchPending();
  Stream<Either<TransactionFailure,KtList<Transaction>>> watchDecline();

  Stream<Either<TransactionFailure,KtList<Unit>>> create(Transaction transaction);
  Stream<Either<TransactionFailure,KtList<Unit>>> delete(Transaction transaction);
}
