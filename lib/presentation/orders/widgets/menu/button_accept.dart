import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/transaction/transaction_watcher/transaction_watcher_bloc.dart';
import '../../constants.dart';

class MenuButtonAccept extends StatelessWidget {
  const MenuButtonAccept({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildAcceptedButton(context);
  }

  OutlinedButton _buildAcceptedButton(BuildContext context) => OutlinedButton(
        onPressed: () {
          context.read<TransactionWatcherBloc>().add(const TransactionWatcherEvent.watchAcceptedTransaction());
        },
        child: const FittedBox(child: Text(OrdersConstants.accepted)),
        style: OutlinedButton.styleFrom(backgroundColor: Colors.lightGreen),
      );
}
