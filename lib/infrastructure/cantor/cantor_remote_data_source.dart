import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kantor_tukan/domain/cantor/cantor_remote_failure.dart';
import 'package:kantor_tukan/domain/cantor/exchange_date.dart';
import 'package:kantor_tukan/domain/cantor/exchange_rate.dart';
import 'package:kantor_tukan/domain/cantor/i_cantor_remote_data_source.dart';
import 'package:http/http.dart' as http;
import 'package:kantor_tukan/domain/core/currency_value.dart';
import 'package:kantor_tukan/infrastructure/cantor/exchange_rate_dto.dart';
import 'package:kantor_tukan/infrastructure/cantor/input_converter.dart';
import 'package:kantor_tukan/infrastructure/cantor/links.dart';
import 'package:kt_dart/kt.dart';

const validateExchangeRate = 'validate';
const invalidateExchangeRate = 'invalidate';

@LazySingleton(as: ICantorRemoteDataSource)
class CantorRemoteDataSource implements ICantorRemoteDataSource {
  final http.Client client;

  CantorRemoteDataSource({required this.client});

  @override
  Future<Either<CantorRemoteFailure, KtList<ExchangeRate>>> getCurrencyDataFromUrl() async {
    final uriToCantorWithExchangeRate = Uri.parse(Links.currencyData);
    final response = await client.get(uriToCantorWithExchangeRate);

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
  }

  @override
  Future<Either<CantorRemoteFailure, ExchangeDate>> getCurrencyUpdateDateFromUrl() async {
    final uriToCantorWithUpdateDate = Uri.parse(Links.currencyUpdateTime);
    final response = await client.get(uriToCantorWithUpdateDate);

    if (isStatusCodeOk(response)) {
      final dateTimeUpdate = InputConverter().toDateTimeFromCantorRemoteString(response.body);
      final exchangeUpdateDate = ExchangeDate(updateDate: DateCantor.fromDateTime(dateTimeUpdate));
      return right(exchangeUpdateDate);
    } else {
      return left(_serverFailure());
    }
  }

  CantorRemoteFailure _serverFailure() => const CantorRemoteFailure.serverError();

  bool isStatusCodeOk(http.Response response) => response.statusCode == 200;
}
