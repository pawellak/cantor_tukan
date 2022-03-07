import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/orders/constants.dart';
import 'package:kantor_tukan/presentation/orders/widgets/menu/button_all.dart';
import 'package:kantor_tukan/presentation/orders/widgets/menu/button_decline.dart';
import 'package:kantor_tukan/presentation/orders/widgets/menu/button_pending.dart';

import 'button_accept.dart';

class OrdersMenu extends StatelessWidget {
  const OrdersMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: OrdersConstants.menuFlex,
      child: _buildMenuBody(context),
    );
  }

  Column _buildMenuBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildFirstRowMenu(context),
        _buildSecondRowMenu(context),
      ],
    );
  }

  Expanded _buildFirstRowMenu(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          _decorate(const MenuButtonAll()),
        ],
      ),
    );
  }

  Expanded _buildSecondRowMenu(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          _decorate(const MenuButtonAccept()),
          _decorate(const MenuButtonPending()),
          _decorate(const MenuButtonDecline())
        ],
      ),
    );
  }

  Expanded _decorate(Widget button) {
    return Expanded(
        child: Padding(
      padding: _getPadding(),
      child: button,
    ));
  }

  EdgeInsets _getPadding() => const EdgeInsets.all(OrdersConstants.padding);
}
