import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/transaction/transaction_watcher/transaction_watcher_bloc.dart';
import '../../constants.dart';

class MenuButtonAll extends StatelessWidget {
  const MenuButtonAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildAllButton(context);
  }

  OutlinedButton _buildAllButton(BuildContext context) => OutlinedButton(
        onPressed: () {
          context.read<TransactionWatcherBloc>().add(const TransactionWatcherEvent.watchAllTransaction());
        },
        child: const FittedBox(child: Text(OrdersConstants.all)),
      );
}
