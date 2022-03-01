import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/auth/app_auth_bloc.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';
import 'package:kantor_tukan/presentation/sign_in/sign_in_page.dart';

import 'constants.dart';

class SplashPage extends StatelessWidget {
  static const routeName = '/splash';

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppAuthBloc, AppAuthState>(
      listener: _getListener,
      child: Scaffold(
        appBar: _buildAppBarLoading(),
        body: _buildLoadingWidget(),
      ),
    );
  }

  void _getListener(BuildContext context, AppAuthState state) {
    state.map(
        initial: (_) {},
        authenticated: (_) {
          Navigator.of(context).pushNamed(ExchangeRatePage.routeName);
        },
        unauthenticated: (_) {
          Navigator.of(context).pushNamed(SignInPage.routeName);
        });
  }

  Center _buildLoadingWidget() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  AppBar _buildAppBarLoading() => AppBar(automaticallyImplyLeading: false, title: const Text(Constants.loading));
}
