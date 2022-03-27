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

  Row _buildRefreshButton(BuildContext context) {
    return Row(
      children: [
        Expanded(child: BlocBuilder<InternetBloc, InternetState>(builder: (BuildContext context, InternetState state) {
          bool isSubmitting = state.isSubmitting;
          return isSubmitting ? _buildLoadingWidget() : _buildRefreshButtonWidget(context);
        }))
      ],
    );
  }

  ElevatedButton _buildRefreshButtonWidget(BuildContext context) {
    return ElevatedButton(
      style: _getButtonStyle(context),
      onPressed: () => _onRefreshPressed(context),
      child: _getButtonDescription(),
    );
  }

  Padding _buildLoadingWidget() => const Padding(
        padding: EdgeInsets.all(InternetConstants.padding),
        child: CircularProgressIndicator(),
      );

  Text _getButtonDescription() => const Text(InternetConstants.tipButton);

  ButtonStyle _getButtonStyle(BuildContext context) =>
      ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor);

  void _onRefreshPressed(BuildContext context) {
    return _checkInternetConnection(context);
  }

  void _checkInternetConnection(BuildContext context) =>
      context.read<InternetBloc>().add(const InternetEvent.checkConnection());
}
