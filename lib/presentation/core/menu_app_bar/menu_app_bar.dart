import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/presentation/core/menu_app_bar/initial.dart';
import 'package:kantor_tukan/presentation/core/menu_app_bar/unauthenticated.dart';

import '../../../application/auth/app_auth_bloc.dart';
import 'authenticated.dart';

class MenuAppBar extends StatelessWidget {
  const MenuAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppAuthBloc, AppAuthState>(
      builder: (context, state) {
        return state.map(initial: (initial) {
          return MenuAppBarInitial().call(context);
        }, authenticated: (authenticated) {
          return MenuAppBarAuthenticated().call(context);
        }, unauthenticated: (unauthenticated) {
          return MenuAppBarUnAuthenticated().call(context);
        });
      },
    );
  }
}
