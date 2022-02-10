// ignore_for_file: constant_identifier_names

enum EnumTransactionType { buy, sell, undefined }

enum EnumTransactionStatus { pending, accepted, decline, undefined }

enum EnumCurrency {
  EUR,
  E500,
  USD,
  GBP,
  CHF,
  AUD,
  CZK,
  DKK,
  CAD,
  NOK,
  SEK,
  ILS,
  JPY,
  CNY,
  UAH,
  RUB,
  HRK,
  HUF,
  RON,
  BGN,
  TRY,
  AED,
  ALL,
  SAR,
  DOP,
  GEL,
  HKD,
  INR,
  IEP,
  KRW,
  MXN,
  NZD,
  RSD,
  SCP,
  THB,
  SGD,
  VND,
  CZKb,
  EURb,
  GBPb,
  undefined
}

extension ParseEnumToString on Enum {
  String toShortString() {
    return toString().split('.').last;
  }
}

extension ParseStringToEnum on List {
  T? toEnumFromString<T>(String? value) {
    if (value == null) return null;
    final localEnums = this;

    for (var localEnum in localEnums) {
      if (localEnum.toString().split('.').last == value) {
        return localEnum;
      }
    }
    return null;
  }
}
