import 'package:flutter/material.dart';

import '../../constants.dart';

class ListPointDecorator
{
  Container call(BuildContext context, Row listPoint) {
    return Container(
      decoration: _buildBoxDecoration(context),
      margin: const EdgeInsets.all(OrdersConstants.padding),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: listPoint,
      ),
      alignment: Alignment.centerLeft,
    );
  }

  BoxDecoration _buildBoxDecoration(BuildContext context) {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Theme.of(context).primaryColor,
          width: OrdersConstants.verySmallLine,
        ),
      ),
    );
  }
}