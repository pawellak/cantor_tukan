import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/auth/app_auth_bloc.dart';
import 'package:kantor_tukan/injection.dart';
import 'package:kantor_tukan/presentation/core/app_theme.dart';
import 'package:kantor_tukan/presentation/core/pres_const.dart';
import 'package:kantor_tukan/presentation/sign_in/sign_in_page.dart';
import 'package:kantor_tukan/presentation/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => getIt<AppAuthBloc>()
              ..add(const AppAuthEvent.authCheckRequested())),
      ],
      child: MaterialApp(
        home: const SplashPage(),
        debugShowCheckedModeBanner: false,
        title: PresConst.nameOfCantor,
        theme: AppTheme().buildLightTheme(),
        routes: {SignInPage.routeName: (context) => const SignInPage()},
      ),
    );
  }
}
