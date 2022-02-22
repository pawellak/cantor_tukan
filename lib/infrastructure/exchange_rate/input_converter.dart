import 'package:kantor_tukan/domain/core/separators.dart';
import 'package:kantor_tukan/infrastructure/exchange_rate/exchange_rate_dto.dart';

const currencyNameIndex = 0;
const sellPriceIndex = 1;
const buyPriceIndex = 2;
const zeroValue = 0.0;
const emptyString = '';
const firstElementInList = 0;
const currencyNameFirstChar = 0;

const dayIndex = 0;
const monthIndex = 1;
const yearIndex = 2;

class InputConverter {
  List<Map<String, dynamic>> toExchangeRateJsonFromCantorRemoteString(String data) {
    List<String> _splittedCurrency = _splitCurrency(data);
    List<String> _rowWithoutTestRow = _removeTestRow(_splittedCurrency);
    List<String> _spilledCurrency = _removeHLetter(_rowWithoutTestRow);

    //single spilledCurrency -> EUR;4,5300;4,5650;2;2;;
    return _spilledCurrency.map((exchangeRate) {
      var splitCurrency = exchangeRate.split(Separators.singleCurrency);

      String sCurrencyName = splitCurrency[currencyNameIndex];
      String sPriceBuy = splitCurrency[buyPriceIndex];
      String sPriceSell = splitCurrency[sellPriceIndex];

      sPriceBuy = sPriceBuy.replaceAll(RegExp(Separators.comma), Separators.dot);
      sPriceSell = sPriceSell.replaceAll(RegExp(Separators.comma), Separators.dot);

      double? dPriceBuy = double.tryParse(sPriceBuy);
      double? dPriceSell = double.tryParse(sPriceSell);
      dPriceBuy ??= zeroValue;
      dPriceSell ??= zeroValue;
      return ExchangeRateDto(priceSell: dPriceSell, priceBuy: dPriceBuy, currency: sCurrencyName).toJson();
    }).toList();
  }

  DateTime toDateTimeFromCantorRemoteString(String date) {
    final splittedDate = date.split(Separators.dot);

    var year = int.tryParse(splittedDate[yearIndex]);
    var month = int.tryParse(splittedDate[monthIndex]);
    var day = int.tryParse(splittedDate[dayIndex]);

    year ??= 0;
    month ??= 1;
    day ??= 1;

    return DateTime(year, month, day);
  }

  ///Single string into List, where 1 line = 1 exchange rate
  List<String> _splitCurrency(String _currency) {
    return _currency.split(Separators.lineCurrency);
  }

  ///Remove trashes from list like "ArrayTESTH;;;2;2"
  List<String> _removeTestRow(List<String> _sc) {
    int length = _sc.length;
    int lastElementInList = length - 1;

    _sc.removeAt(lastElementInList);
    lastElementInList = lastElementInList-1;
    _sc.removeAt(lastElementInList);
    _sc.removeAt(firstElementInList);

    return _sc;
  }

  ///eg. EURH;4,5300;4,5650;2;2;; to EUR;4,5300;4,5650;2;2;;
  List<String> _removeHLetter(List<String> _sc) {
    return _sc.map((element) {
      var singleExchangeRate = element.split(Separators.singleCurrency);
      var currencyName = singleExchangeRate[currencyNameIndex];
      var currencyNameLength = currencyName.length;
      final currencyNameLastChar = currencyNameLength - 1;

      currencyName = currencyName.substring(currencyNameFirstChar, currencyNameLastChar);
      singleExchangeRate[currencyNameIndex] = currencyName;
      final exchangeRateString = _listOfStringToString(singleExchangeRate);
      return exchangeRateString;
    }).toList();
  }

  String _listOfStringToString(List<String> singleCurrency) {
    String word = emptyString;

    for (var element in singleCurrency) {
      word = word + element;
      word = word + Separators.singleCurrency;
    }

    return word;
  }
}
