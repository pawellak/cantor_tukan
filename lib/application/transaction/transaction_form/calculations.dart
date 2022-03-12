import 'package:kantor_tukan/domain/core/core_constants.dart';

import 'transaction_form_bloc.dart';
import '../../../domain/core/enums.dart';
import '../../../presentation/transaction/constants.dart';

class Calculations {
  late String _calculationsResult;

  String get result {
    return _calculationsResult;
  }

  Calculations(TransactionFormState state) {
    final transactionType = state.transaction.transactionType.getOrCrash();
    double currencyValue = getCurrencyValue(state);
    bool isTypeBuy = getTypeOfTransaction(transactionType);
    double rate = getRate(isTypeBuy, state);
    _calculationsResult = getResult(currencyValue, rate);
  }

  bool getTypeOfTransaction(EnumTransactionType transactionType) {
    bool isTypeBuy = false;
    if (isTransactionTypeBuy(transactionType)) {
      isTypeBuy = true;
    }
    return isTypeBuy;
  }

  double getRate(bool isTypeBuy, TransactionFormState state) {
    double rate;
    if (isTypeBuy) {
      rate = state.transaction.priceBuy.value.fold((l) => TransactionConstants.zeroDouble, (r) => r);
    } else {
      rate = state.transaction.priceSell.value.fold((l) => TransactionConstants.zeroDouble, (r) => r);
    }
    return rate;
  }

  double getCurrencyValue(TransactionFormState state) =>
      state.transaction.currencyValue.value.fold((l) => TransactionConstants.zeroDouble, (r) => r);

  String getResult(double currencyValue, double rate) {
    String result;
    if (currencyValue == TransactionConstants.zeroDouble) {
      result = TransactionConstants.invalidValue;
    } else {
      result = (rate * currencyValue).toStringAsFixed(CoreConstants.valueDecimalPlaces);
    }
    return result;
  }

  bool isTransactionTypeBuy(EnumTransactionType transactionType) => transactionType == EnumTransactionType.buy;
}
