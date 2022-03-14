import 'package:flutter/material.dart';

import 'fetched.dart';
import 'subbmiting.dart';

class ExchangeRateBuilder {
  Widget call(context, state) {
    return state.isSubmitting ? ExchangeRateSubmitting().call() : ExchangeRateFetched().call(state);
  }
}
