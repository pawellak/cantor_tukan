import 'package:flutter_test/flutter_test.dart';
import 'package:kantor_tukan/domain/core/core_constants.dart';
import 'package:kantor_tukan/domain/core/currency.dart';
import 'package:kantor_tukan/domain/core/failures.dart';
import 'package:kantor_tukan/domain/currency/value_object.dart';

void main() {
  setUp(() {});

  test('should create instance of currency value and check basic functionality',() async {
      var result = CurrencyValue(CoreConstants.minValueCurrency);
      var isRightValue = result.value.isRight();
      expect(isRightValue, true);

      result = CurrencyValue(CoreConstants.minValueCurrency - 1);
      var isFailureValue = result.value.isLeft();
      expect(isFailureValue, true);

      result = CurrencyValue(CoreConstants.maxValueCurrency);
      isRightValue = result.value.isRight();
      expect(isRightValue, true);

      result = CurrencyValue(CoreConstants.maxValueCurrency + 1);
      isFailureValue = result.value.isLeft();
      expect(isFailureValue, true);
    },);
  test('should create instance of currency and check basic functionality',() async {
      String euroCurrency = 'EUR';
      var result = Currency(euroCurrency);
      var currency =  result.value.fold((l) => '', (r) => r);
      expect(currency, EnumCurrency.EUR);

      String undefinedCurrency = 'TEST';
      result = Currency(undefinedCurrency);
      var undefinedCurrencyLeft =  result.value.fold((l) => l, (r) => '');
      expect(undefinedCurrencyLeft,  const ValueFailure.unknownCurrency(failedValue: EnumCurrency.UNDEFINED));
    },);
}
