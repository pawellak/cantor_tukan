import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/exchange_form/exchange_rate_bloc.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/builder.dart';

import 'package:kantor_tukan/presentation/exchange_rate/widgets/listener.dart';


class ExchangeRateForm extends StatelessWidget {
  const ExchangeRateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ExchangeRateBloc, ExchangeRateState>(
      listener: ExchangeRateListener().call,
      builder: ExchangeRateBuilder().call,
    );
  }
}
