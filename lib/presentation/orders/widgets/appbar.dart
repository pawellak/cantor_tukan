import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/orders/constants.dart';

import '../../core/menu_app_bar/menu_app_bar.dart';

class OrdersAppBar extends StatelessWidget with PreferredSizeWidget {
  const OrdersAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return _buildAppBar();
  }

  AppBar _buildAppBar() {
    return AppBar(
      actions: const [MenuAppBar()],
      title: const Text(OrdersConstants.orders),
      automaticallyImplyLeading: false,
    );
  }
}
