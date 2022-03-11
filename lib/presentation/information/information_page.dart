import 'package:flutter/material.dart';
import 'package:kantor_tukan/presentation/information/widgets/appbar.dart';
import 'package:kantor_tukan/presentation/information/widgets/body.dart';

class InformationPage extends StatelessWidget {
  static const routeName = '/information';

  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: const Scaffold(
        appBar: InformationAppBar(),
        body: InformationBody(),
      ),
    );
  }
}
