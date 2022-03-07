import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/transaction/transaction.dart';

import 'package:kantor_tukan/presentation/orders/widgets/body_tile/acceptation.dart';
import 'package:kantor_tukan/presentation/orders/widgets/body_tile/bill.dart';
import 'package:kantor_tukan/presentation/orders/widgets/body_tile/buy.dart';
import 'package:kantor_tukan/presentation/orders/widgets/body_tile/reservation.dart';
import 'package:kantor_tukan/presentation/orders/widgets/body_tile/sell.dart';

class BodyTile extends StatelessWidget {
  final Transaction userTransaction;

  const BodyTile({Key? key, required this.userTransaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildBodyOfTile(userTransaction);
  }

  Column _buildBodyOfTile(Transaction userTransaction) {
    return Column(
      children: [
        TransactionBill().call(userTransaction),
        TransactionReservation().call(userTransaction),
        TransactionAcceptation().call(userTransaction),
        TransactionSell().call(userTransaction),
        TransactionBuy().call(userTransaction),
      ],
    );
  }
}
