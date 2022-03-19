import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/transaction/transaction_watcher/transaction_watcher_bloc.dart';
import '../../constants.dart';

class MenuButtonPending extends StatelessWidget {
  const MenuButtonPending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildPendingButton(context);
  }

  OutlinedButton _buildPendingButton(BuildContext context) => OutlinedButton(
        onPressed: () {
          context.read<TransactionWatcherBloc>().add(const TransactionWatcherEvent.watchPendingTransaction());
        },
        child: const FittedBox(child: Text(OrdersConstants.pending)),
        style: OutlinedButton.styleFrom(backgroundColor: Colors.yellow),
      );
}
