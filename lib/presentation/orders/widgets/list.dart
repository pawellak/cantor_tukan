import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/application/transaction/transaction_watcher/transaction_watcher_bloc.dart';
import 'package:kantor_tukan/presentation/orders/constants.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/transaction/transaction.dart';
import 'expanded_tile.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: OrdersConstants.bodyFlex,
      child: _buildBodyList(),
    );
  }

  BlocBuilder _buildBodyList() {
    return BlocBuilder<TransactionWatcherBloc, TransactionWatcherState>(
        builder: (BuildContext context, TransactionWatcherState state) {
      return state.map(
        initial: _buildInitialState,
        loadInProgress: _buildLoadingState,
        loadSuccess: _loadSuccess,
        loadFailure: _buildFailureState,
      );
    });
  }

  Widget _buildInitialState(_) {
    return const Center(child: Text(OrdersConstants.chooseCategory));
  }

  Widget _buildLoadingState(_) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _loadSuccess(state) {
    if (_isListEmpty(state)) {
      return _buildEmptyBody();
    } else {
      return _buildListBody(state);
    }
  }

  Center _buildEmptyBody() => const Center(child: Text(OrdersConstants.emptyCategory));

  ListView _buildListBody(state) {
    return ListView.builder(
      itemCount: state.transaction.size,
      itemBuilder: (context, index) {
        return _buildExpandedTile(index, state.transaction);
      },
    );
  }

  bool _isListEmpty(state) => state.transaction.size == 0;

  ExpandedTile _buildExpandedTile(int index, KtList<Transaction> userTransactions) {
    return ExpandedTile(
      indexOfTransaction: index,
      userTransaction: userTransactions[index],
    );
  }

  Widget _buildFailureState(_) {
    return const Center(child: Text(OrdersConstants.loadingFailure));
  }
}
