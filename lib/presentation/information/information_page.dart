import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/information/widgets/button_back.dart';
import 'package:kantor_tukan/presentation/information/widgets/description.dart';

import 'constants.dart';

class InformationPage extends StatelessWidget {
  static const routeName = '/information';

  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String information = _getDescription(context);

    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(information),
    );
  }

  String _getDescription(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    String information;

    if (arguments is String) {
      information = arguments;
    } else {
      information = Constants.emptyString;
    }
    return information;
  }

  AppBar _buildAppBar() => AppBar(title: const Text(Constants.appBarDescription), automaticallyImplyLeading: false);

  Column _buildBody(String information) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Description(description: information),
        const SizedBox(height: Constants.heightTenPixel),
        const ButtonBack(),
      ],
    );
  }
}
