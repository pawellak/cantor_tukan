import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/transaction/transaction_watcher/transaction_watcher_bloc.dart';
import '../../constants.dart';

class MenuButtonDecline extends StatelessWidget {
  const MenuButtonDecline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildDeclineButton(context);
  }

  OutlinedButton _buildDeclineButton(BuildContext context) => OutlinedButton(
        onPressed: () {
          context.read<TransactionWatcherBloc>().add(const TransactionWatcherEvent.watchDeclineTransaction());
        },
        child: const FittedBox(child: Text(OrdersConstants.decline)),
        style: OutlinedButton.styleFrom(backgroundColor: Colors.red),
      );
}
