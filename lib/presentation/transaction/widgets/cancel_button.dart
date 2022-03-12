import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/exchange_rate/exchange_rate_page.dart';
import 'package:kantor_tukan/presentation/transaction/constants.dart';


class CancelButton extends StatefulWidget {
  const CancelButton({Key? key}) : super(key: key);

  @override
  _CancelButtonState createState() => _CancelButtonState();
}

class _CancelButtonState extends State<CancelButton> {
  @override
  Widget build(BuildContext context) {
    return _buildButton(context);
  }
}

ElevatedButton _buildButton(BuildContext context) {
  return ElevatedButton(
      style: _style(context),
      onPressed: () {
        _navigateToExchangeRatePage(context);
      },
      child: const FittedBox(child: Text(TransactionConstants.cancel)));
}

void _navigateToExchangeRatePage(BuildContext context) {
  Navigator.of(context).popAndPushNamed(ExchangeRatePage.routeName);
}

ButtonStyle _style(BuildContext context) => ElevatedButton.styleFrom(primary: Theme.of(context).colorScheme.onError);
