// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/src/bloc_provider.dart';
import 'package:kantor_tukan/application/auth/app_auth_bloc.dart';
import 'package:kantor_tukan/injection.dart';
import 'package:kantor_tukan/presentation/about_me/about_me_page.dart';
import 'package:kantor_tukan/presentation/core/app_theme.dart';
import 'package:kantor_tukan/presentation/core/constants.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';
import 'package:kantor_tukan/presentation/information/information_page.dart';
import 'package:kantor_tukan/presentation/internet/internet_page.dart';
import 'package:kantor_tukan/presentation/orders/orders_page.dart';
import 'package:kantor_tukan/presentation/register/register_page.dart';
import 'package:kantor_tukan/presentation/sign_in/sign_in_page.dart';
import 'package:kantor_tukan/presentation/splash/splash_page.dart';
import 'package:kantor_tukan/presentation/transaction/transaction_page.dart';

import '../../application/internet/internet_bloc.dart';
import '../../application/timer/timer_bloc.dart';
import '../../application/transaction/transaction_form/transaction_form_bloc.dart';
import '../../application/transaction/transaction_watcher/transaction_watcher_bloc.dart';
import '../contact/contact_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _setScreenOrientation();
    return MultiBlocProvider(
      providers: _getProviders(),
      child: MaterialApp(
        home: const SplashPage(),
        debugShowCheckedModeBanner: false,
        title: CoreConstants.nameOfCantor,
        theme: AppTheme().buildLightTheme(),
        routes: _getRoutes(),
      ),
    );
  }

  void _setScreenOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  List<BlocProviderSingleChildWidget> _getProviders() {
    return [
      BlocProvider(create: (context) => getIt<TransactionFormBloc>()),
      BlocProvider(create: (context) => getIt<InternetBloc>()..add(const InternetEvent.checkConnection())),
      BlocProvider(create: (context) => getIt<AppAuthBloc>()),
      BlocProvider(create: (context) => TimerBloc()),
      BlocProvider(create: (context) => getIt<TransactionWatcherBloc>()),
    ];
  }

  Map<String, WidgetBuilder> _getRoutes() {
    return {
      SignInPage.routeName: (context) => const SignInPage(),
      SplashPage.routeName: (context) => const SplashPage(),
      ExchangeRatePage.routeName: (context) => const ExchangeRatePage(),
      TransactionPage.routeName: (context) => const TransactionPage(),
      InternetPage.routeName: (context) => const InternetPage(),
      InformationPage.routeName: (context) => const InformationPage(),
      OrdersPage.routeName: (context) => const OrdersPage(),
      RegisterPage.routeName: (context) => const RegisterPage(),
      AboutMePage.routeName: (context) => const AboutMePage(),
      ContactPage.routeName: (context) => const ContactPage(),
    };
  }
}
