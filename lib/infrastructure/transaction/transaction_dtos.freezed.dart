// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDto _$TransactionDtoFromJson(Map<String, dynamic> json) {
  return _TransactionDto.fromJson(json);
}

/// @nodoc
class _$TransactionDtoTearOff {
  const _$TransactionDtoTearOff();

  _TransactionDto call(
      {required String? uid,
      required String currency,
      required String transactionType,
      required String transactionStatus,
      required DateTime dateAcceptation,
      required DateTime dateReservation,
      required double currencyValue,
      required double currencyBill,
      required double priceBuy,
      required double priceSell}) {
    return _TransactionDto(
      uid: uid,
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

  TransactionDto fromJson(Map<String, Object?> json) {
    return TransactionDto.fromJson(json);
  }
}

/// @nodoc
const $TransactionDto = _$TransactionDtoTearOff();

/// @nodoc
mixin _$TransactionDto {
  String? get uid => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get transactionType => throw _privateConstructorUsedError;
  String get transactionStatus => throw _privateConstructorUsedError;
  DateTime get dateAcceptation => throw _privateConstructorUsedError;
  DateTime get dateReservation => throw _privateConstructorUsedError;
  double get currencyValue => throw _privateConstructorUsedError;
  double get currencyBill => throw _privateConstructorUsedError;
  double get priceBuy => throw _privateConstructorUsedError;
  double get priceSell => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDtoCopyWith<TransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDtoCopyWith<$Res> {
  factory $TransactionDtoCopyWith(
          TransactionDto value, $Res Function(TransactionDto) then) =
      _$TransactionDtoCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      String currency,
      String transactionType,
      String transactionStatus,
      DateTime dateAcceptation,
      DateTime dateReservation,
      double currencyValue,
      double currencyBill,
      double priceBuy,
      double priceSell});
}

/// @nodoc
class _$TransactionDtoCopyWithImpl<$Res>
    implements $TransactionDtoCopyWith<$Res> {
  _$TransactionDtoCopyWithImpl(this._value, this._then);

  final TransactionDto _value;
  // ignore: unused_field
  final $Res Function(TransactionDto) _then;

  @override
  $Res call({
    Object? uid = freezed,
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
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      transactionStatus: transactionStatus == freezed
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      dateAcceptation: dateAcceptation == freezed
          ? _value.dateAcceptation
          : dateAcceptation // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateReservation: dateReservation == freezed
          ? _value.dateReservation
          : dateReservation // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currencyValue: currencyValue == freezed
          ? _value.currencyValue
          : currencyValue // ignore: cast_nullable_to_non_nullable
              as double,
      currencyBill: currencyBill == freezed
          ? _value.currencyBill
          : currencyBill // ignore: cast_nullable_to_non_nullable
              as double,
      priceBuy: priceBuy == freezed
          ? _value.priceBuy
          : priceBuy // ignore: cast_nullable_to_non_nullable
              as double,
      priceSell: priceSell == freezed
          ? _value.priceSell
          : priceSell // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TransactionDtoCopyWith<$Res>
    implements $TransactionDtoCopyWith<$Res> {
  factory _$TransactionDtoCopyWith(
          _TransactionDto value, $Res Function(_TransactionDto) then) =
      __$TransactionDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      String currency,
      String transactionType,
      String transactionStatus,
      DateTime dateAcceptation,
      DateTime dateReservation,
      double currencyValue,
      double currencyBill,
      double priceBuy,
      double priceSell});
}

/// @nodoc
class __$TransactionDtoCopyWithImpl<$Res>
    extends _$TransactionDtoCopyWithImpl<$Res>
    implements _$TransactionDtoCopyWith<$Res> {
  __$TransactionDtoCopyWithImpl(
      _TransactionDto _value, $Res Function(_TransactionDto) _then)
      : super(_value, (v) => _then(v as _TransactionDto));

  @override
  _TransactionDto get _value => super._value as _TransactionDto;

  @override
  $Res call({
    Object? uid = freezed,
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
    return _then(_TransactionDto(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      transactionStatus: transactionStatus == freezed
          ? _value.transactionStatus
          : transactionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      dateAcceptation: dateAcceptation == freezed
          ? _value.dateAcceptation
          : dateAcceptation // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateReservation: dateReservation == freezed
          ? _value.dateReservation
          : dateReservation // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currencyValue: currencyValue == freezed
          ? _value.currencyValue
          : currencyValue // ignore: cast_nullable_to_non_nullable
              as double,
      currencyBill: currencyBill == freezed
          ? _value.currencyBill
          : currencyBill // ignore: cast_nullable_to_non_nullable
              as double,
      priceBuy: priceBuy == freezed
          ? _value.priceBuy
          : priceBuy // ignore: cast_nullable_to_non_nullable
              as double,
      priceSell: priceSell == freezed
          ? _value.priceSell
          : priceSell // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionDto extends _TransactionDto {
  const _$_TransactionDto(
      {required this.uid,
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

  factory _$_TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionDtoFromJson(json);

  @override
  final String? uid;
  @override
  final String currency;
  @override
  final String transactionType;
  @override
  final String transactionStatus;
  @override
  final DateTime dateAcceptation;
  @override
  final DateTime dateReservation;
  @override
  final double currencyValue;
  @override
  final double currencyBill;
  @override
  final double priceBuy;
  @override
  final double priceSell;

  @override
  String toString() {
    return 'TransactionDto(uid: $uid, currency: $currency, transactionType: $transactionType, transactionStatus: $transactionStatus, dateAcceptation: $dateAcceptation, dateReservation: $dateReservation, currencyValue: $currencyValue, currencyBill: $currencyBill, priceBuy: $priceBuy, priceSell: $priceSell)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionDto &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
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
      const DeepCollectionEquality().hash(uid),
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
  _$TransactionDtoCopyWith<_TransactionDto> get copyWith =>
      __$TransactionDtoCopyWithImpl<_TransactionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionDtoToJson(this);
  }
}

abstract class _TransactionDto extends TransactionDto {
  const factory _TransactionDto(
      {required String? uid,
      required String currency,
      required String transactionType,
      required String transactionStatus,
      required DateTime dateAcceptation,
      required DateTime dateReservation,
      required double currencyValue,
      required double currencyBill,
      required double priceBuy,
      required double priceSell}) = _$_TransactionDto;
  const _TransactionDto._() : super._();

  factory _TransactionDto.fromJson(Map<String, dynamic> json) =
      _$_TransactionDto.fromJson;

  @override
  String? get uid;
  @override
  String get currency;
  @override
  String get transactionType;
  @override
  String get transactionStatus;
  @override
  DateTime get dateAcceptation;
  @override
  DateTime get dateReservation;
  @override
  double get currencyValue;
  @override
  double get currencyBill;
  @override
  double get priceBuy;
  @override
  double get priceSell;
  @override
  @JsonKey(ignore: true)
  _$TransactionDtoCopyWith<_TransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
