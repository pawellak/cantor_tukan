// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

  _Transaction call(
      {required UniqueId uId,
      required Currency currency,
      required TransactionType transactionType,
      required TransactionStatus transactionStatus,
      required DateCantor dateAcceptation,
      required DateCantor dateReservation,
      required CurrencyValue currencyValue,
      required CurrencyBill currencyBill,
      required CurrencyPrice priceBuy,
      required CurrencyPrice priceSell}) {
    return _Transaction(
      uId: uId,
      currency: currency,
      transactionType: transactionType,
      transactionStatus: transactionStatus,
      dateAcceptation: dateAcceptation,
      dateReservation: dateReservation,
      currencyValue: currencyValue,
      currencyBill: currencyBill,
      priceBuy: priceBuy,
      priceSell: priceSell,
    );
  }
}

/// @nodoc
const $Transaction = _$TransactionTearOff();

/// @nodoc
mixin _$Transaction {
  UniqueId get uId => throw _privateConstructorUsedError;
  Currency get currency => throw _privateConstructorUsedError;
  TransactionType get transactionType => throw _privateConstructorUsedError;
  TransactionStatus get transactionStatus => throw _privateConstructorUsedError;
  DateCantor get dateAcceptation => throw _privateConstructorUsedError;
  DateCantor get dateReservation => throw _privateConstructorUsedError;
  CurrencyValue get currencyValue => throw _privateConstructorUsedError;
  CurrencyBill get currencyBill => throw _privateConstructorUsedError;
  CurrencyPrice get priceBuy => throw _privateConstructorUsedError;
  CurrencyPrice get priceSell => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {UniqueId uId,
      Currency currency,
      TransactionType transactionType,
      TransactionStatus transactionStatus,
      DateCantor dateAcceptation,
      DateCantor dateReservation,
      CurrencyValue currencyValue,
      CurrencyBill currencyBill,
      CurrencyPrice priceBuy,
      CurrencyPrice priceSell});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? uId = freezed,
    Object? currency = freezed,
    Object? transactionType = freezed,
    Object? transactionStatus = freezed,
    Object? dateAcceptation = freezed,
    Object? dateReservation = freezed,
    Object? currencyValue = freezed,
    Object? currencyBill = freezed,
    Object? priceBuy = freezed,
    Object? priceSell = freezed,
  }) {
    return _then(_value.copyWith(
      uId: uId == freezed
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      transactionStatus: transactionStatus == freezed
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      dateAcceptation: dateAcceptation == freezed
          ? _value.dateAcceptation
          : dateAcceptation // ignore: cast_nullable_to_non_nullable
              as DateCantor,
      dateReservation: dateReservation == freezed
          ? _value.dateReservation
          : dateReservation // ignore: cast_nullable_to_non_nullable
              as DateCantor,
      currencyValue: currencyValue == freezed
          ? _value.currencyValue
          : currencyValue // ignore: cast_nullable_to_non_nullable
              as CurrencyValue,
      currencyBill: currencyBill == freezed
          ? _value.currencyBill
          : currencyBill // ignore: cast_nullable_to_non_nullable
              as CurrencyBill,
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
abstract class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) then) =
      __$TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId uId,
      Currency currency,
      TransactionType transactionType,
      TransactionStatus transactionStatus,
      DateCantor dateAcceptation,
      DateCantor dateReservation,
      CurrencyValue currencyValue,
      CurrencyBill currencyBill,
      CurrencyPrice priceBuy,
      CurrencyPrice priceSell});
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(
      _Transaction _value, $Res Function(_Transaction) _then)
      : super(_value, (v) => _then(v as _Transaction));

  @override
  _Transaction get _value => super._value as _Transaction;

  @override
  $Res call({
    Object? uId = freezed,
    Object? currency = freezed,
    Object? transactionType = freezed,
    Object? transactionStatus = freezed,
    Object? dateAcceptation = freezed,
    Object? dateReservation = freezed,
    Object? currencyValue = freezed,
    Object? currencyBill = freezed,
    Object? priceBuy = freezed,
    Object? priceSell = freezed,
  }) {
    return _then(_Transaction(
      uId: uId == freezed
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      transactionStatus: transactionStatus == freezed
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as TransactionStatus,
      dateAcceptation: dateAcceptation == freezed
          ? _value.dateAcceptation
          : dateAcceptation // ignore: cast_nullable_to_non_nullable
              as DateCantor,
      dateReservation: dateReservation == freezed
          ? _value.dateReservation
          : dateReservation // ignore: cast_nullable_to_non_nullable
              as DateCantor,
      currencyValue: currencyValue == freezed
          ? _value.currencyValue
          : currencyValue // ignore: cast_nullable_to_non_nullable
              as CurrencyValue,
      currencyBill: currencyBill == freezed
          ? _value.currencyBill
          : currencyBill // ignore: cast_nullable_to_non_nullable
              as CurrencyBill,
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

class _$_Transaction extends _Transaction {
  const _$_Transaction(
      {required this.uId,
      required this.currency,
      required this.transactionType,
      required this.transactionStatus,
      required this.dateAcceptation,
      required this.dateReservation,
      required this.currencyValue,
      required this.currencyBill,
      required this.priceBuy,
      required this.priceSell})
      : super._();

  @override
  final UniqueId uId;
  @override
  final Currency currency;
  @override
  final TransactionType transactionType;
  @override
  final TransactionStatus transactionStatus;
  @override
  final DateCantor dateAcceptation;
  @override
  final DateCantor dateReservation;
  @override
  final CurrencyValue currencyValue;
  @override
  final CurrencyBill currencyBill;
  @override
  final CurrencyPrice priceBuy;
  @override
  final CurrencyPrice priceSell;

  @override
  String toString() {
    return 'Transaction(uId: $uId, currency: $currency, transactionType: $transactionType, transactionStatus: $transactionStatus, dateAcceptation: $dateAcceptation, dateReservation: $dateReservation, currencyValue: $currencyValue, currencyBill: $currencyBill, priceBuy: $priceBuy, priceSell: $priceSell)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Transaction &&
            const DeepCollectionEquality().equals(other.uId, uId) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.transactionType, transactionType) &&
            const DeepCollectionEquality()
                .equals(other.transactionStatus, transactionStatus) &&
            const DeepCollectionEquality()
                .equals(other.dateAcceptation, dateAcceptation) &&
            const DeepCollectionEquality()
                .equals(other.dateReservation, dateReservation) &&
            const DeepCollectionEquality()
                .equals(other.currencyValue, currencyValue) &&
            const DeepCollectionEquality()
                .equals(other.currencyBill, currencyBill) &&
            const DeepCollectionEquality().equals(other.priceBuy, priceBuy) &&
            const DeepCollectionEquality().equals(other.priceSell, priceSell));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uId),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(transactionType),
      const DeepCollectionEquality().hash(transactionStatus),
      const DeepCollectionEquality().hash(dateAcceptation),
      const DeepCollectionEquality().hash(dateReservation),
      const DeepCollectionEquality().hash(currencyValue),
      const DeepCollectionEquality().hash(currencyBill),
      const DeepCollectionEquality().hash(priceBuy),
      const DeepCollectionEquality().hash(priceSell));

  @JsonKey(ignore: true)
  @override
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);
}

abstract class _Transaction extends Transaction {
  const factory _Transaction(
      {required UniqueId uId,
      required Currency currency,
      required TransactionType transactionType,
      required TransactionStatus transactionStatus,
      required DateCantor dateAcceptation,
      required DateCantor dateReservation,
      required CurrencyValue currencyValue,
      required CurrencyBill currencyBill,
      required CurrencyPrice priceBuy,
      required CurrencyPrice priceSell}) = _$_Transaction;
  const _Transaction._() : super._();

  @override
  UniqueId get uId;
  @override
  Currency get currency;
  @override
  TransactionType get transactionType;
  @override
  TransactionStatus get transactionStatus;
  @override
  DateCantor get dateAcceptation;
  @override
  DateCantor get dateReservation;
  @override
  CurrencyValue get currencyValue;
  @override
  CurrencyBill get currencyBill;
  @override
  CurrencyPrice get priceBuy;
  @override
  CurrencyPrice get priceSell;
  @override
  @JsonKey(ignore: true)
  _$TransactionCopyWith<_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
