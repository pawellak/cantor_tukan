import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/internet/internet_bloc.dart';
import 'package:kantor_tukan/injection.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/appbar.dart';
import 'package:kantor_tukan/presentation/exchange_rate/widgets/exchange_rate_form.dart';
import '../../application/exchange_form/exchange_rate_bloc.dart';
import '../internet/internet_page.dart';
import 'package:kantor_tukan/presentation/exchange_rate/constants.dart';

class ExchangeRatePage extends StatelessWidget {
  static const routeName = '/exchange-rate';

  const ExchangeRatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InternetBloc, InternetState>(
      listener: _buildListener,
      builder: _buildBuilder,
    );
  }

  void _buildListener(BuildContext context, InternetState state) {
    if (_isNotInternetConnection(state)) {
      Navigator.of(context).pushNamedAndRemoveUntil(InternetPage.routeName, (route) => route.isFirst);
    }
  }

  bool _isNotInternetConnection(InternetState state) {
    bool isNotInternet = !state.isConnected;
    bool isNotSubmitting = !state.isSubmitting;

    if (isNotInternet & isNotSubmitting) {
      return true;
    } else {
      return false;
    }
  }

  Widget _buildBuilder(BuildContext context, InternetState state) {
    bool isInternet = state.isConnected;

    if (isInternet) {
      return _buildExchangeRangeBody();
    } else {
      return _buildWaitingForInternet(context, state);
    }
  }

  Scaffold _buildWaitingForInternet(BuildContext context, InternetState state) {
    _checkInternetConnection(context);
    return Scaffold(
      body: const Center(child: CircularProgressIndicator()),
      appBar: AppBar(title: const Text(Constants.appBarLoading)),
    );
  }

  void _checkInternetConnection(BuildContext context) {
    context.read<InternetBloc>().add(const InternetEvent.checkConnection());
  }

  BlocProvider<ExchangeRateBloc> _buildExchangeRangeBody() {
    return BlocProvider(
      create: (context) => getIt<ExchangeRateBloc>()..add(const ExchangeRateEvent.fetch()),
      child: const Scaffold(
        appBar: ExchangeRangeAppBar(),
        body: ExchangeRateForm(),
      ),
    );
  }
}
