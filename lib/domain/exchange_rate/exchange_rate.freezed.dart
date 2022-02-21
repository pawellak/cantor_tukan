// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exchange_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExchangeRateTearOff {
  const _$ExchangeRateTearOff();

  _ExchangeRate call(
      {required Currency currency,
      required CurrencyPrice priceBuy,
      required CurrencyPrice priceSell}) {
    return _ExchangeRate(
      currency: currency,
      priceBuy: priceBuy,
      priceSell: priceSell,
    );
  }
}

/// @nodoc
const $ExchangeRate = _$ExchangeRateTearOff();

/// @nodoc
mixin _$ExchangeRate {
  Currency get currency => throw _privateConstructorUsedError;
  CurrencyPrice get priceBuy => throw _privateConstructorUsedError;
  CurrencyPrice get priceSell => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeRateCopyWith<ExchangeRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateCopyWith<$Res> {
  factory $ExchangeRateCopyWith(
          ExchangeRate value, $Res Function(ExchangeRate) then) =
      _$ExchangeRateCopyWithImpl<$Res>;
  $Res call(
      {Currency currency, CurrencyPrice priceBuy, CurrencyPrice priceSell});
}

/// @nodoc
class _$ExchangeRateCopyWithImpl<$Res> implements $ExchangeRateCopyWith<$Res> {
  _$ExchangeRateCopyWithImpl(this._value, this._then);

  final ExchangeRate _value;
  // ignore: unused_field
  final $Res Function(ExchangeRate) _then;

  @override
  $Res call({
    Object? currency = freezed,
    Object? priceBuy = freezed,
    Object? priceSell = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      priceBuy: priceBuy == freezed
          ? _value.priceBuy
          : priceBuy // ignore: cast_nullable_to_non_nullable
              as CurrencyPrice,
      priceSell: priceSell == freezed
          ? _value.priceSell
          : priceSell // ignore: cast_nullable_to_non_nullable
              as CurrencyPrice,
    ));
  }
}

/// @nodoc
abstract class _$ExchangeRateCopyWith<$Res>
    implements $ExchangeRateCopyWith<$Res> {
  factory _$ExchangeRateCopyWith(
          _ExchangeRate value, $Res Function(_ExchangeRate) then) =
      __$ExchangeRateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Currency currency, CurrencyPrice priceBuy, CurrencyPrice priceSell});
}

/// @nodoc
class __$ExchangeRateCopyWithImpl<$Res> extends _$ExchangeRateCopyWithImpl<$Res>
    implements _$ExchangeRateCopyWith<$Res> {
  __$ExchangeRateCopyWithImpl(
      _ExchangeRate _value, $Res Function(_ExchangeRate) _then)
      : super(_value, (v) => _then(v as _ExchangeRate));

  @override
  _ExchangeRate get _value => super._value as _ExchangeRate;

  @override
  $Res call({
    Object? currency = freezed,
    Object? priceBuy = freezed,
    Object? priceSell = freezed,
  }) {
    return _then(_ExchangeRate(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      priceBuy: priceBuy == freezed
          ? _value.priceBuy
          : priceBuy // ignore: cast_nullable_to_non_nullable
              as CurrencyPrice,
      priceSell: priceSell == freezed
          ? _value.priceSell
          : priceSell // ignore: cast_nullable_to_non_nullable
              as CurrencyPrice,
    ));
  }
}

/// @nodoc

class _$_ExchangeRate extends _ExchangeRate {
  const _$_ExchangeRate(
      {required this.currency, required this.priceBuy, required this.priceSell})
      : super._();

  @override
  final Currency currency;
  @override
  final CurrencyPrice priceBuy;
  @override
  final CurrencyPrice priceSell;

  @override
  String toString() {
    return 'ExchangeRate(currency: $currency, priceBuy: $priceBuy, priceSell: $priceSell)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExchangeRate &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.priceBuy, priceBuy) &&
            const DeepCollectionEquality().equals(other.priceSell, priceSell));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(priceBuy),
      const DeepCollectionEquality().hash(priceSell));

  @JsonKey(ignore: true)
  @override
  _$ExchangeRateCopyWith<_ExchangeRate> get copyWith =>
      __$ExchangeRateCopyWithImpl<_ExchangeRate>(this, _$identity);
}

abstract class _ExchangeRate extends ExchangeRate {
  const factory _ExchangeRate(
      {required Currency currency,
      required CurrencyPrice priceBuy,
      required CurrencyPrice priceSell}) = _$_ExchangeRate;
  const _ExchangeRate._() : super._();

  @override
  Currency get currency;
  @override
  CurrencyPrice get priceBuy;
  @override
  CurrencyPrice get priceSell;
  @override
  @JsonKey(ignore: true)
  _$ExchangeRateCopyWith<_ExchangeRate> get copyWith =>
      throw _privateConstructorUsedError;
}
