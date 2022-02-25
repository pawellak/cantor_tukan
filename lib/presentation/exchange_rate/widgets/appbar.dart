import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_tukan/presentation/exchange_rate/constants.dart';

import '../../../application/exchange_form/exchange_rate_bloc.dart';
import '../../../domain/core/value_converters.dart';

class ExchangeRangeAppBar extends StatelessWidget with PreferredSizeWidget {
  const ExchangeRangeAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExchangeRateBloc, ExchangeRateState>(
      builder: (context, state) {
        return state.isSubmitting ? _isSubmitting() : _isLoaded(state);
      },
    );
  }

  AppBar _isSubmitting() {
    return AppBar(
      title: const Text(Constants.appBarLoading),
      automaticallyImplyLeading: false,
    );
  }

  AppBar _isLoaded(ExchangeRateState state) {
    final dateOfUpdate = state.exchangeDate.updateDate.getOrCrash();
    final dailyDateFold = ValueConverters().toDailyDateStringFromDateTime(dateOfUpdate);
    final dailyDate = dailyDateFold.fold((l) => Constants.invalidData, (r) => r);
    const description = Constants.dateOfUpdate;

    return AppBar(title: _buildTitle(description, dailyDate), automaticallyImplyLeading: false);
  }
  FittedBox _buildTitle(String description, String dailyDate) => FittedBox(child: Text("$description $dailyDate"));
}
