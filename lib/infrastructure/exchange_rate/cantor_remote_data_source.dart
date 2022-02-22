import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/domain/exchange_rate/cantor_remote_failure.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_date.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/domain/exchange_rate/i_cantor_remote_data_source.dart';
import 'package:kantor_tukan/domain/core/currency_value.dart';
import 'package:kantor_tukan/infrastructure/exchange_rate/exchange_rate_dto.dart';
import 'package:kantor_tukan/infrastructure/exchange_rate/input_converter.dart';
import 'package:kantor_tukan/infrastructure/exchange_rate/links.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/exchange_rate/i_cantor_remote_data_source.dart';

const validateExchangeRate = 'validate';
const invalidateExchangeRate = 'invalidate';

@Singleton(as: ICantorRemoteDataSource)
class CantorRemoteDataSource implements ICantorRemoteDataSource {
  final Client client;

  CantorRemoteDataSource(this.client);

  @override
  Future<Either<CantorRemoteFailure, KtList<ExchangeRate>>> getExchangeRates() async {
    try {
      final uriToCantorWithExchangeRate = Uri.parse(Links.currencyData);
      final response = await client.post(uriToCantorWithExchangeRate);
      if (isStatusCodeOk(response)) {
        final exchangeRateListJson = InputConverter().toExchangeRateJsonFromCantorRemoteString(response.body);
        final exchangeRateDtoList =
            exchangeRateListJson.map((exchangeRate) => ExchangeRateDto.fromJson(exchangeRate)).toList();
        final exchangeRateList = exchangeRateDtoList.map((exchangeRateDto) {
          final exchangeRate = exchangeRateDto.toDomain();
          return exchangeRate;
        }).toList();
        return right(exchangeRateList.toImmutableList());
      } else {
        return left(_serverFailure());
      }
    } catch (ex) {
      return left(_serverFailure());
    }
  }

  @override
  Future<Either<CantorRemoteFailure, ExchangeDate>> getExchangeRatesUpdateDate() async {
    try {
      final uriToCantorWithUpdateDate = Uri.parse(Links.currencyUpdateTime);
      final response = await client.get(uriToCantorWithUpdateDate);
      if (isStatusCodeOk(response)) {
        final dateTimeUpdate = InputConverter().toDateTimeFromCantorRemoteString(response.body);
        final exchangeUpdateDate = ExchangeDate(updateDate: DateCantor.fromDateTime(dateTimeUpdate));
        return right(exchangeUpdateDate);
      } else {
        return left(_serverFailure());
      }
    } catch (ex) {
      return left(_serverFailure());
    }
  }

  CantorRemoteFailure _serverFailure() => const CantorRemoteFailure.serverError();

  bool isStatusCodeOk(Response response) => response.statusCode == 200;
}
