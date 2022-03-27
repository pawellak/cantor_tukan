import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/internet/internet_bloc.dart';
import 'package:kantor_tukan/presentation/internet/constants.dart';
import 'package:kantor_tukan/presentation/internet/widgets/button_refresh.dart';

import '../splash/splash_page.dart';

class InternetPage extends StatelessWidget {
  static const routeName = '/internet';

  const InternetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InternetBloc, InternetState>(
      listener: _getListener,
      builder: _getBuilder,
    );
  }

  void _getListener(BuildContext context, InternetState state) {
    if (_isInternetConnection(state)) {
      _navigateToSplashScreen(context);
    }
  }

  _isInternetConnection(InternetState state) => state.isConnected;

  void _navigateToSplashScreen(BuildContext context) {


    Navigator.of(context).popAndPushNamed(SplashPage.routeName);
  }

  Widget _getBuilder(BuildContext context, InternetState _) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(context),
      ),
    );
  }

  AppBar _buildAppBar() => AppBar(automaticallyImplyLeading: false, title: const Text(InternetConstants.tip));

  Center _buildBody(BuildContext context) {
    return Center(
      child: Padding(
        padding: _getPadding(),
        child: const ButtonRefresh(),
      ),
    );
  }

  EdgeInsets _getPadding() => const EdgeInsets.all(InternetConstants.padding);
}
