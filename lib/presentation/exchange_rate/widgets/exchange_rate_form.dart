import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/exchange_form/exchange_rate_bloc.dart';
import 'package:kantor_tukan/domain/exchange_rate/cantor_remote_failure.dart';
import 'package:kantor_tukan/domain/exchange_rate/exchange_rate.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/error_snack_bar.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/failure.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/fetched.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/list_table.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/list_title.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/subbmiting.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/success.dart';
import 'package:kantor_tukan/presentation/transaction/transaction_page.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:kantor_tukan/presentation/exchange_rate/constants.dart';

import '../../../application/transaction/transaction_form/transaction_form_bloc.dart';

class ExchangeRateForm extends StatelessWidget {
  const ExchangeRateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExchangeRateBloc, ExchangeRateState>(
      listener: _getListener,
      builder: _getBuilder,
    );
  }

  void _getListener(BuildContext context, ExchangeRateState state) {
    state.failureOrSuccessOption.fold(_getNone, (either) {
      either.fold((CantorRemoteFailure failure) {
        ExchangeRateFailure().call(failure, context);
      }, (_) {
        ExchangeRateSuccess().call(state, context);
      });
    });
  }

  Widget _getBuilder(context, state) {
    return state.isSubmitting ? ExchangeRateSubmitting().call() : ExchangeRateFetched().call(state);
  }

  Null _getNone() {}
}
