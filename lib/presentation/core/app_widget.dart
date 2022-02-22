import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/auth/app_auth_bloc.dart';
import 'package:kantor_tukan/injection.dart';
import 'package:kantor_tukan/presentation/core/app_theme.dart';
import 'package:kantor_tukan/presentation/core/pres_const.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';
import 'package:kantor_tukan/presentation/sign_in/sign_in_page.dart';
import 'package:kantor_tukan/presentation/splash/splash_page.dart';
import 'package:kantor_tukan/presentation/transaction/transaction_page.dart';

import '../../application/transaction/transaction_form/transaction_form_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AppAuthBloc>()..add(const AppAuthEvent.authCheckRequested())),
        BlocProvider(create: (context) => getIt<TransactionFormBloc>()),
      ],
      child: MaterialApp(
        home: const SplashPage(),
        debugShowCheckedModeBanner: false,
        title: PresConst.nameOfCantor,
        theme: AppTheme().buildLightTheme(),
        routes: _routes(),
      ),
    );
  }

  Map<String, WidgetBuilder> _routes() {
    return {
      SignInPage.routeName: (context) => const SignInPage(),
      SplashPage.routeName: (context) => const SplashPage(),
      ExchangeRatePage.routeName: (context) => const ExchangeRatePage(),
      TransactionPage.routeName: (context) => const TransactionPage(),
    };
  }
}
