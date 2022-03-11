import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';
import 'package:kantor_tukan/presentation/orders/widgets/appbar.dart';
import 'package:kantor_tukan/presentation/orders/widgets/body.dart';

class OrdersPage extends StatelessWidget {
  static const routeName = '/orders';

  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildOrdersPage(context);
  }

  WillPopScope _buildOrdersPage(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return _onWillPop(context);
      },
      child: const Scaffold(
        appBar: OrdersAppBar(),
        body: OrdersBody(),
      ),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    Navigator.of(context).popAndPushNamed(ExchangeRatePage.routeName);
    return false;
  }
}
