// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exchange_rate_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExchangeRateDto _$ExchangeRateDtoFromJson(Map<String, dynamic> json) {
  return _ExchangeRateDto.fromJson(json);
}

/// @nodoc
class _$ExchangeRateDtoTearOff {
  const _$ExchangeRateDtoTearOff();

  _ExchangeRateDto call(
      {required String currency,
      required double priceBuy,
      required double priceSell}) {
    return _ExchangeRateDto(
      currency: currency,
      priceBuy: priceBuy,
      priceSell: priceSell,
    );
  }

  ExchangeRateDto fromJson(Map<String, Object?> json) {
    return ExchangeRateDto.fromJson(json);
  }
}

/// @nodoc
const $ExchangeRateDto = _$ExchangeRateDtoTearOff();

/// @nodoc
mixin _$ExchangeRateDto {
  String get currency => throw _privateConstructorUsedError;
  double get priceBuy => throw _privateConstructorUsedError;
  double get priceSell => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeRateDtoCopyWith<ExchangeRateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateDtoCopyWith<$Res> {
  factory $ExchangeRateDtoCopyWith(
          ExchangeRateDto value, $Res Function(ExchangeRateDto) then) =
      _$ExchangeRateDtoCopyWithImpl<$Res>;
  $Res call({String currency, double priceBuy, double priceSell});
}

/// @nodoc
class _$ExchangeRateDtoCopyWithImpl<$Res>
    implements $ExchangeRateDtoCopyWith<$Res> {
  _$ExchangeRateDtoCopyWithImpl(this._value, this._then);

  final ExchangeRateDto _value;
  // ignore: unused_field
  final $Res Function(ExchangeRateDto) _then;

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
              as String,
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
abstract class _$ExchangeRateDtoCopyWith<$Res>
    implements $ExchangeRateDtoCopyWith<$Res> {
  factory _$ExchangeRateDtoCopyWith(
          _ExchangeRateDto value, $Res Function(_ExchangeRateDto) then) =
      __$ExchangeRateDtoCopyWithImpl<$Res>;
  @override
  $Res call({String currency, double priceBuy, double priceSell});
}

/// @nodoc
class __$ExchangeRateDtoCopyWithImpl<$Res>
    extends _$ExchangeRateDtoCopyWithImpl<$Res>
    implements _$ExchangeRateDtoCopyWith<$Res> {
  __$ExchangeRateDtoCopyWithImpl(
      _ExchangeRateDto _value, $Res Function(_ExchangeRateDto) _then)
      : super(_value, (v) => _then(v as _ExchangeRateDto));

  @override
  _ExchangeRateDto get _value => super._value as _ExchangeRateDto;

  @override
  $Res call({
    Object? currency = freezed,
    Object? priceBuy = freezed,
    Object? priceSell = freezed,
  }) {
    return _then(_ExchangeRateDto(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_ExchangeRateDto extends _ExchangeRateDto {
  const _$_ExchangeRateDto(
      {required this.currency, required this.priceBuy, required this.priceSell})
      : super._();

  factory _$_ExchangeRateDto.fromJson(Map<String, dynamic> json) =>
      _$$_ExchangeRateDtoFromJson(json);

  @override
  final String currency;
  @override
  final double priceBuy;
  @override
  final double priceSell;

  @override
  String toString() {
    return 'ExchangeRateDto(currency: $currency, priceBuy: $priceBuy, priceSell: $priceSell)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExchangeRateDto &&
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
  _$ExchangeRateDtoCopyWith<_ExchangeRateDto> get copyWith =>
      __$ExchangeRateDtoCopyWithImpl<_ExchangeRateDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExchangeRateDtoToJson(this);
  }
}

abstract class _ExchangeRateDto extends ExchangeRateDto {
  const factory _ExchangeRateDto(
      {required String currency,
      required double priceBuy,
      required double priceSell}) = _$_ExchangeRateDto;
  const _ExchangeRateDto._() : super._();

  factory _ExchangeRateDto.fromJson(Map<String, dynamic> json) =
      _$_ExchangeRateDto.fromJson;

  @override
  String get currency;
  @override
  double get priceBuy;
  @override
  double get priceSell;
  @override
  @JsonKey(ignore: true)
  _$ExchangeRateDtoCopyWith<_ExchangeRateDto> get copyWith =>
      throw _privateConstructorUsedError;
}
