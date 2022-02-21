// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exchange_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExchangeDateTearOff {
  const _$ExchangeDateTearOff();

  _ExchangeDate call({required DateCantor updateDate}) {
    return _ExchangeDate(
      updateDate: updateDate,
    );
  }
}

/// @nodoc
const $ExchangeDate = _$ExchangeDateTearOff();

/// @nodoc
mixin _$ExchangeDate {
  DateCantor get updateDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeDateCopyWith<ExchangeDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeDateCopyWith<$Res> {
  factory $ExchangeDateCopyWith(
          ExchangeDate value, $Res Function(ExchangeDate) then) =
      _$ExchangeDateCopyWithImpl<$Res>;
  $Res call({DateCantor updateDate});
}

/// @nodoc
class _$ExchangeDateCopyWithImpl<$Res> implements $ExchangeDateCopyWith<$Res> {
  _$ExchangeDateCopyWithImpl(this._value, this._then);

  final ExchangeDate _value;
  // ignore: unused_field
  final $Res Function(ExchangeDate) _then;

  @override
  $Res call({
    Object? updateDate = freezed,
  }) {
    return _then(_value.copyWith(
      updateDate: updateDate == freezed
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as DateCantor,
    ));
  }
}

/// @nodoc
abstract class _$ExchangeDateCopyWith<$Res>
    implements $ExchangeDateCopyWith<$Res> {
  factory _$ExchangeDateCopyWith(
          _ExchangeDate value, $Res Function(_ExchangeDate) then) =
      __$ExchangeDateCopyWithImpl<$Res>;
  @override
  $Res call({DateCantor updateDate});
}

/// @nodoc
class __$ExchangeDateCopyWithImpl<$Res> extends _$ExchangeDateCopyWithImpl<$Res>
    implements _$ExchangeDateCopyWith<$Res> {
  __$ExchangeDateCopyWithImpl(
      _ExchangeDate _value, $Res Function(_ExchangeDate) _then)
      : super(_value, (v) => _then(v as _ExchangeDate));

  @override
  _ExchangeDate get _value => super._value as _ExchangeDate;

  @override
  $Res call({
    Object? updateDate = freezed,
  }) {
    return _then(_ExchangeDate(
      updateDate: updateDate == freezed
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as DateCantor,
    ));
  }
}

/// @nodoc

class _$_ExchangeDate extends _ExchangeDate {
  const _$_ExchangeDate({required this.updateDate}) : super._();

  @override
  final DateCantor updateDate;

  @override
  String toString() {
    return 'ExchangeDate(updateDate: $updateDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExchangeDate &&
            const DeepCollectionEquality()
                .equals(other.updateDate, updateDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(updateDate));

  @JsonKey(ignore: true)
  @override
  _$ExchangeDateCopyWith<_ExchangeDate> get copyWith =>
      __$ExchangeDateCopyWithImpl<_ExchangeDate>(this, _$identity);
}

abstract class _ExchangeDate extends ExchangeDate {
  const factory _ExchangeDate({required DateCantor updateDate}) =
      _$_ExchangeDate;
  const _ExchangeDate._() : super._();

  @override
  DateCantor get updateDate;
  @override
  @JsonKey(ignore: true)
  _$ExchangeDateCopyWith<_ExchangeDate> get copyWith =>
      throw _privateConstructorUsedError;
}
