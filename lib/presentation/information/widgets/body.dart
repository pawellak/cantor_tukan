import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/information/constants.dart';

import 'button_back.dart';
import 'description.dart';

class InformationBody extends StatelessWidget {
  const InformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String description = _getDescription(context);
    return _buildBody(description);
  }


  String _getDescription(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    String information;

    if (arguments is String) {
      information = arguments;
    } else {
      information = InformationConstants.emptyString;
    }
    return information;
  }


  Column _buildBody(String information) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Description(description: information),
        const SizedBox(height: InformationConstants.heightTenPixel),
        const ButtonBack(),
      ],
    );
  }
}
