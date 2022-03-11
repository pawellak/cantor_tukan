import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/information/constants.dart';

class InformationAppBar extends StatelessWidget with PreferredSizeWidget {
  const InformationAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return _buildAppBar();
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(Constants.appBarDescription),
      automaticallyImplyLeading: false,
    );
  }
}
