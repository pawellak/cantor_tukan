import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/orders/widgets/list.dart';
import 'package:kantor_tukan/presentation/orders/widgets/menu/menu.dart';

class OrdersBody extends StatelessWidget {
  const OrdersBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [OrdersMenu(), OrdersList()],
    );
  }
}
