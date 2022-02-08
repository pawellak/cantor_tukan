enum EnumCurrency  {
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
  UNDEFINED
}

extension ParseToString on EnumCurrency {
  String toShortString() {
    return toString().split('.').last;
  }
}
