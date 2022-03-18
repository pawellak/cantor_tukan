import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/presentation/exchange_rate/constants.dart';

import '../../../application/exchange_form/exchange_rate_bloc.dart';
import '../../../domain/core/value_converters.dart';
import '../../core/menu_app_bar/menu_app_bar.dart';

class ExchangeRateAppBar extends StatelessWidget with PreferredSizeWidget {
  const ExchangeRateAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExchangeRateBloc, ExchangeRateState>(
      builder: _getBuilder,
    );
  }

  Widget _getBuilder(context, state) {
    return state.isSubmitting ? _isSubmitting() : _isLoaded(state);
  }

  AppBar _isSubmitting() {
    return AppBar(

      title: const Text(ExchangeRateConstants.appBarLoading),
      automaticallyImplyLeading: false,
    );
  }

  AppBar _isLoaded(ExchangeRateState state) {
    String dailyDate = _getDate(state);
    return AppBar(actions: const [MenuAppBar()],title: _buildTitle(dailyDate), automaticallyImplyLeading: false);
  }

  String _getDate(ExchangeRateState state) {
    final dateOfUpdate = state.exchangeDate.updateDate.value.fold((l) {
      return DateTime(ExchangeRateConstants.invalidDate);
    }, (r) => r);
    final dailyDateFold = ValueConverters().toDailyDateStringFromDateTime(dateOfUpdate);
    final dailyDate = dailyDateFold.fold((l) => ExchangeRateConstants.errorOccurred, (r) => r);
    return dailyDate;
  }

  FittedBox _buildTitle(String dailyDate) {
    const description = ExchangeRateConstants.dateOfUpdate;
    return FittedBox(child: Text("$description $dailyDate"));
  }
}
