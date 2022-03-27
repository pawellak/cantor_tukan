import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/about_me/constants.dart';
import 'package:kantor_tukan/presentation/about_me/widgets/appbar.dart';

import '../exchange_rate/exchange_rate_page.dart';

class AboutMePage extends StatelessWidget {
  static const routeName = '/about-me';

  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return _onWillPop(context);
      },
      child: Scaffold(
        appBar: const AboutMeAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildDecorationLine(context),
            _emptySpace(),
            _buildText(AboutMeConstants.information),
            _emptySpace(),
            _buildText(AboutMeConstants.author),
            _emptySpace(),
            _buildText(AboutMeConstants.contact),
            _emptySpace(),
            _buildDecorationLine(context),
          ],
        ),
      ),
    );
  }

  Text _buildText(String text) => (Text(text, textAlign: TextAlign.center));

  Future<bool> _onWillPop(BuildContext context) async {
    Navigator.of(context).popAndPushNamed(ExchangeRatePage.routeName);
    return false;
  }

  Container _buildDecorationLine(BuildContext context) =>
      Container(height: AboutMeConstants.decorationLine, color: Theme.of(context).primaryColor);

  SizedBox _emptySpace() => const SizedBox(height: AboutMeConstants.emptySpace);
}
