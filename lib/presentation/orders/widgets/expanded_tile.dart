import 'package:flutter/material.dart';
import 'package:kantor_tukan/domain/transaction/transaction.dart';

import '../constants.dart';
import 'body_tile/body_tile.dart';
import 'header_tile.dart';

class ExpandedTile extends StatefulWidget {
  final Transaction userTransaction;
  final int indexOfTransaction;

  const ExpandedTile({Key? key, required this.userTransaction, required this.indexOfTransaction}) : super(key: key);

  @override
  _ExpandedTileState createState() => _ExpandedTileState();
}

class _ExpandedTileState extends State<ExpandedTile> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    ExpansionPanelList panel = _buildExpansionPanelList();
    return _decorator(panel);
  }

  ExpansionPanelList _buildExpansionPanelList() {
    return ExpansionPanelList(
      animationDuration: _getAnimationDuration(),
      children: [
        _buildExpansionChildren(),
      ],
      expansionCallback: _toggleExpandedTile,
    );
  }

  Duration _getAnimationDuration() => const Duration(milliseconds: OrdersConstants.animationDuration);

  ExpansionPanel _buildExpansionChildren() {
    return ExpansionPanel(
      headerBuilder: (_, __) {
        return HeaderTile(userTransaction: widget.userTransaction);
      },
      body: BodyTile(userTransaction: widget.userTransaction),
      isExpanded: _expanded,
      canTapOnHeader: true,
    );
  }

  void _toggleExpandedTile(_, __) {
    setState(() {
      _expanded = !_expanded;
    });
  }

  Container _decorator(ExpansionPanelList expansionPanelList) {
    return Container(
      margin: const EdgeInsets.all(OrdersConstants.padding),
      child: expansionPanelList,
    );
  }
}
