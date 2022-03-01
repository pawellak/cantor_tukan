import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/presentation/internet/constants.dart';

import '../../../application/internet/internet_bloc.dart';

class ButtonRefresh extends StatelessWidget {
  const ButtonRefresh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildRefreshButton(context);
  }

  Row _buildRefreshButton(context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: _buildButtonStyle(context),
            onPressed: () => _onRefreshPressed(context),
            child: const Text(Constants.tipButton),
          ),
        ),
      ],
    );
  }

  ButtonStyle _buildButtonStyle(context) => ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor);

  void _onRefreshPressed(BuildContext context) {
    return _checkInternetConnection(context);
  }

  void _checkInternetConnection(BuildContext context) =>
      context.read<InternetBloc>().add(const NoInternetEvent.checkConnection());
}
