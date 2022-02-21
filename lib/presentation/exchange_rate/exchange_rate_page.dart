import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/injection.dart';
import 'package:kantor_tukan/presentation/core/pres_const.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/exchange_rate_form.dart';

import '../../application/exchange_form/exchange_rate_bloc.dart';

class ExchangeRatePage extends StatelessWidget {
  static const routeName = '/exchange-rate';

  const ExchangeRatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          PresConst.erpUpdateDate,
        ),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<ExchangeRateBloc>()..add(const ExchangeRateEvent.fetch()),
          ),
        ],
        child: const ExchangeRateForm(),
      ),
    );
  }
}
