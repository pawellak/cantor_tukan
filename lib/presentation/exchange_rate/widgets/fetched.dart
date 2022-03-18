import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/subbmiting.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/timer.dart';
import 'package:kt_dart/collection.dart';

import '../../../application/exchange_form/exchange_rate_bloc.dart';
import '../../../domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/presentation/exchange_rate/constants.dart';
import 'list_table.dart';
import 'list_title.dart';

class ExchangeRateFetched {
  call(ExchangeRateState state) {
    //failure will be handled in listener
    if (_isSomeFailure(state)) return ExchangeRateSubmitting().call();

    final KtList<ExchangeRate> exchangeRateList = state.exchangeRate;
    return Column(
      children: [
        _buildExchangeRateTitle(),
        _buildExchangeRateList(exchangeRateList),
        const ExchangeRateTimer(),
      ],
    );
  }

  Expanded _buildExchangeRateTitle() => const Expanded(child: ListTitle());

  Expanded _buildExchangeRateList(KtList<ExchangeRate> exchangeRateList) {
    return Expanded(
      flex: ExchangeRateConstants.exchangeRateListFlex,
      child: ListTable(items: exchangeRateList),
    );
  }

  bool _isSomeFailure(ExchangeRateState state) => state.showErrorMessages;
}
