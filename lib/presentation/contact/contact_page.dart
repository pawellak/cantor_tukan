import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/contact/widgets/appbar.dart';

import '../exchange_rate/exchange_rate_page.dart';
import 'constants.dart';

class ContactPage extends StatelessWidget {
  static const routeName = '/contact';

  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return _onWillPop(context);
      },
      child: Scaffold(
        appBar: const ContactAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildDecorationLine(context),
            _emptySpace(),
            _buildText(ContactConstants.cantorOneAddress),
            _emptySpace(),
            _buildText(ContactConstants.phoneOne),
            _emptySpace(),
            _buildText(ContactConstants.phoneTwo),
            _emptySpace(),
            _buildText(ContactConstants.phoneThree),
            _emptySpace(),
            _buildDecorationLine(context),
          ],
        ),
      ),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    Navigator.of(context).popAndPushNamed(ExchangeRatePage.routeName);
    return false;
  }

  Text _buildText(String text) => (Text(text, textAlign: TextAlign.center));

  Container _buildDecorationLine(BuildContext context) =>
      Container(height: ContactConstants.decorationLine, color: Theme.of(context).primaryColor);

  SizedBox _emptySpace() => const SizedBox(height: ContactConstants.emptySpace);
}
