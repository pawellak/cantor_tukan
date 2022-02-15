import 'package:dartz/dartz.dart';
import 'package:kantor_tukan/domain/cantor/cantor_remote_failure.dart';
import 'package:kantor_tukan/domain/cantor/exchange_date.dart';
import 'package:kantor_tukan/domain/cantor/exchange_rate.dart';
import 'package:kt_dart/kt.dart';

abstract class ICantorRemoteDataSource {
  Future<Either<CantorRemoteFailure, ExchangeDate>> getCurrencyUpdateDateFromUrl();

  Future<Either<CantorRemoteFailure, KtList<ExchangeRate>>> getCurrencyDataFromUrl();
}
