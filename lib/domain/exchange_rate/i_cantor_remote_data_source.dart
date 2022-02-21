import 'package:dartz/dartz.dart';
import 'package:kantor_tukan/domain/exchange_rate/cantor_remote_failure.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_date.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kt_dart/kt.dart';

abstract class ICantorRemoteDataSource {
  Future<Either<CantorRemoteFailure, ExchangeDate>> getExchangeRatesUpdateDate();
  Future<Either<CantorRemoteFailure, KtList<ExchangeRate>>> getExchangeRates();
}
