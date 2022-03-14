import 'package:flutter/material.dart';

import '../constants.dart';

class RegisterAppBar extends StatelessWidget with PreferredSizeWidget {
  const RegisterAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return _buildAppBar();
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(RegisterConstants.registerAppBar),
      automaticallyImplyLeading: false,
    );
  }
}
