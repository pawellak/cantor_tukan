import 'package:flutter/material.dart';

import '../constants.dart';

class TransactionAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TransactionAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return _buildAppBar();
  }

  AppBar _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: _getIsImplyLeading(),
      title: _buildAppBarTitle(),
    );
  }

  bool _getIsImplyLeading() => false;

  Text _buildAppBarTitle() => const Text(TransactionConstants.appBarTitle);
}
