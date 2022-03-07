import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/orders/widgets/appbar.dart';
import 'package:kantor_tukan/presentation/orders/widgets/body.dart';

class OrdersPage extends StatelessWidget {
  static const routeName = '/orders';

  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildOrdersPage();
  }

  Scaffold _buildOrdersPage() {
    return const Scaffold(
      appBar: OrdersAppBar(),
      body: OrdersBody(),
    );
  }
}
