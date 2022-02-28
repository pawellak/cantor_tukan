import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/no_internet/internet_bloc.dart';
import 'package:kantor_tukan/presentation/no_internet/constants.dart';

import '../splash/splash_page.dart';

class NoInternetPage extends StatelessWidget {
  static const routeName = '/internet';

  const NoInternetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoInternetBloc, NoInternetState>(
      listener: _buildListener,
      builder: _buildBuilder,
    );
  }

  void _buildListener(context, state) {
    if (_isInternetConnection(state)) {
      _navigateToSplashScreen(context);
    }
  }

  _isInternetConnection(state) => state.isConnected;

  void _navigateToSplashScreen(context) {
    Navigator.of(context).pushNamedAndRemoveUntil(SplashPage.routeName, (route) => route.isFirst);
  }

  Widget _buildBuilder(context, state) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  AppBar _buildAppBar() => AppBar(automaticallyImplyLeading: false, title: const Text(Constants.tip));

  Center _buildBody(context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Constants.padding),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: _buildButtonStyle(context),
                onPressed: () => _onPressed(context),
                child: const Text(Constants.tipButton),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ButtonStyle _buildButtonStyle(context) => ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor);

  void _onPressed(BuildContext context) {
    return _checkInternetConnection(context);
  }

  void _checkInternetConnection(BuildContext context) =>
      context.read<NoInternetBloc>().add(const NoInternetEvent.checkConnection());
}
