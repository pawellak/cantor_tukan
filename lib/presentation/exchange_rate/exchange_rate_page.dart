import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/injection.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/appbar.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/exchange_rate_form.dart';
import '../../application/exchange_form/exchange_rate_bloc.dart';

class ExchangeRatePage extends StatelessWidget {
  static const routeName = '/exchange-rate';

  const ExchangeRatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ExchangeRateBloc>()..add(const ExchangeRateEvent.fetch()),
      child: WillPopScope(
        onWillPop: () async => false,
        child: const Scaffold(
          appBar: ExchangeRangeAppBar(),
          body: ExchangeRateForm(),
        ),
      ),
    );
  }
}
