// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  UnknownCurrency<T> unknownCurrency<T>({required T failedValue}) {
    return UnknownCurrency<T>(
      failedValue: failedValue,
    );
  }

  CurrencyTooBig<T> currencyTooBig<T>(
      {required double max, required T failedValue}) {
    return CurrencyTooBig<T>(
      max: max,
      failedValue: failedValue,
    );
  }

  CurrencyTooSmall<T> currencyTooSmall<T>(
      {required double min, required T failedValue}) {
    return CurrencyTooSmall<T>(
      min: min,
      failedValue: failedValue,
    );
  }

  InvalidStringToDouble<T> invalidStringToDouble<T>({required T failedValue}) {
    return InvalidStringToDouble<T>(
      failedValue: failedValue,
    );
  }

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unknownCurrency,
    required TResult Function(double max, T failedValue) currencyTooBig,
    required TResult Function(double min, T failedValue) currencyTooSmall,
    required TResult Function(T failedValue) invalidStringToDouble,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? unknownCurrency,
    TResult Function(double max, T failedValue)? currencyTooBig,
    TResult Function(double min, T failedValue)? currencyTooSmall,
    TResult Function(T failedValue)? invalidStringToDouble,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unknownCurrency,
    TResult Function(double max, T failedValue)? currencyTooBig,
    TResult Function(double min, T failedValue)? currencyTooSmall,
    TResult Function(T failedValue)? invalidStringToDouble,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCurrency<T> value) unknownCurrency,
    required TResult Function(CurrencyTooBig<T> value) currencyTooBig,
    required TResult Function(CurrencyTooSmall<T> value) currencyTooSmall,
    required TResult Function(InvalidStringToDouble<T> value)
        invalidStringToDouble,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownCurrency<T> value)? unknownCurrency,
    TResult Function(CurrencyTooBig<T> value)? currencyTooBig,
    TResult Function(CurrencyTooSmall<T> value)? currencyTooSmall,
    TResult Function(InvalidStringToDouble<T> value)? invalidStringToDouble,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCurrency<T> value)? unknownCurrency,
    TResult Function(CurrencyTooBig<T> value)? currencyTooBig,
    TResult Function(CurrencyTooSmall<T> value)? currencyTooSmall,
    TResult Function(InvalidStringToDouble<T> value)? invalidStringToDouble,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $UnknownCurrencyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $UnknownCurrencyCopyWith(
          UnknownCurrency<T> value, $Res Function(UnknownCurrency<T>) then) =
      _$UnknownCurrencyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$UnknownCurrencyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $UnknownCurrencyCopyWith<T, $Res> {
  _$UnknownCurrencyCopyWithImpl(
      UnknownCurrency<T> _value, $Res Function(UnknownCurrency<T>) _then)
      : super(_value, (v) => _then(v as UnknownCurrency<T>));

  @override
  UnknownCurrency<T> get _value => super._value as UnknownCurrency<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(UnknownCurrency<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$UnknownCurrency<T> implements UnknownCurrency<T> {
  const _$UnknownCurrency({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.unknownCurrency(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnknownCurrency<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $UnknownCurrencyCopyWith<T, UnknownCurrency<T>> get copyWith =>
      _$UnknownCurrencyCopyWithImpl<T, UnknownCurrency<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unknownCurrency,
    required TResult Function(double max, T failedValue) currencyTooBig,
    required TResult Function(double min, T failedValue) currencyTooSmall,
    required TResult Function(T failedValue) invalidStringToDouble,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return unknownCurrency(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? unknownCurrency,
    TResult Function(double max, T failedValue)? currencyTooBig,
    TResult Function(double min, T failedValue)? currencyTooSmall,
    TResult Function(T failedValue)? invalidStringToDouble,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
  }) {
    return unknownCurrency?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unknownCurrency,
    TResult Function(double max, T failedValue)? currencyTooBig,
    TResult Function(double min, T failedValue)? currencyTooSmall,
    TResult Function(T failedValue)? invalidStringToDouble,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (unknownCurrency != null) {
      return unknownCurrency(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCurrency<T> value) unknownCurrency,
    required TResult Function(CurrencyTooBig<T> value) currencyTooBig,
    required TResult Function(CurrencyTooSmall<T> value) currencyTooSmall,
    required TResult Function(InvalidStringToDouble<T> value)
        invalidStringToDouble,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return unknownCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownCurrency<T> value)? unknownCurrency,
    TResult Function(CurrencyTooBig<T> value)? currencyTooBig,
    TResult Function(CurrencyTooSmall<T> value)? currencyTooSmall,
    TResult Function(InvalidStringToDouble<T> value)? invalidStringToDouble,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
  }) {
    return unknownCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCurrency<T> value)? unknownCurrency,
    TResult Function(CurrencyTooBig<T> value)? currencyTooBig,
    TResult Function(CurrencyTooSmall<T> value)? currencyTooSmall,
    TResult Function(InvalidStringToDouble<T> value)? invalidStringToDouble,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (unknownCurrency != null) {
      return unknownCurrency(this);
    }
    return orElse();
  }
}

abstract class UnknownCurrency<T> implements ValueFailure<T> {
  const factory UnknownCurrency({required T failedValue}) =
      _$UnknownCurrency<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $UnknownCurrencyCopyWith<T, UnknownCurrency<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyTooBigCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $CurrencyTooBigCopyWith(
          CurrencyTooBig<T> value, $Res Function(CurrencyTooBig<T>) then) =
      _$CurrencyTooBigCopyWithImpl<T, $Res>;
  @override
  $Res call({double max, T failedValue});
}

/// @nodoc
class _$CurrencyTooBigCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $CurrencyTooBigCopyWith<T, $Res> {
  _$CurrencyTooBigCopyWithImpl(
      CurrencyTooBig<T> _value, $Res Function(CurrencyTooBig<T>) _then)
      : super(_value, (v) => _then(v as CurrencyTooBig<T>));

  @override
  CurrencyTooBig<T> get _value => super._value as CurrencyTooBig<T>;

  @override
  $Res call({
    Object? max = freezed,
    Object? failedValue = freezed,
  }) {
    return _then(CurrencyTooBig<T>(
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CurrencyTooBig<T> implements CurrencyTooBig<T> {
  const _$CurrencyTooBig({required this.max, required this.failedValue});

  @override
  final double max;
  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.currencyTooBig(max: $max, failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrencyTooBig<T> &&
            const DeepCollectionEquality().equals(other.max, max) &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(max),
      const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $CurrencyTooBigCopyWith<T, CurrencyTooBig<T>> get copyWith =>
      _$CurrencyTooBigCopyWithImpl<T, CurrencyTooBig<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unknownCurrency,
    required TResult Function(double max, T failedValue) currencyTooBig,
    required TResult Function(double min, T failedValue) currencyTooSmall,
    required TResult Function(T failedValue) invalidStringToDouble,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return currencyTooBig(max, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? unknownCurrency,
    TResult Function(double max, T failedValue)? currencyTooBig,
    TResult Function(double min, T failedValue)? currencyTooSmall,
    TResult Function(T failedValue)? invalidStringToDouble,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
  }) {
    return currencyTooBig?.call(max, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unknownCurrency,
    TResult Function(double max, T failedValue)? currencyTooBig,
    TResult Function(double min, T failedValue)? currencyTooSmall,
    TResult Function(T failedValue)? invalidStringToDouble,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (currencyTooBig != null) {
      return currencyTooBig(max, failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCurrency<T> value) unknownCurrency,
    required TResult Function(CurrencyTooBig<T> value) currencyTooBig,
    required TResult Function(CurrencyTooSmall<T> value) currencyTooSmall,
    required TResult Function(InvalidStringToDouble<T> value)
        invalidStringToDouble,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return currencyTooBig(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownCurrency<T> value)? unknownCurrency,
    TResult Function(CurrencyTooBig<T> value)? currencyTooBig,
    TResult Function(CurrencyTooSmall<T> value)? currencyTooSmall,
    TResult Function(InvalidStringToDouble<T> value)? invalidStringToDouble,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
  }) {
    return currencyTooBig?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCurrency<T> value)? unknownCurrency,
    TResult Function(CurrencyTooBig<T> value)? currencyTooBig,
    TResult Function(CurrencyTooSmall<T> value)? currencyTooSmall,
    TResult Function(InvalidStringToDouble<T> value)? invalidStringToDouble,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (currencyTooBig != null) {
      return currencyTooBig(this);
    }
    return orElse();
  }
}

abstract class CurrencyTooBig<T> implements ValueFailure<T> {
  const factory CurrencyTooBig({required double max, required T failedValue}) =
      _$CurrencyTooBig<T>;

  double get max;
  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $CurrencyTooBigCopyWith<T, CurrencyTooBig<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyTooSmallCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $CurrencyTooSmallCopyWith(
          CurrencyTooSmall<T> value, $Res Function(CurrencyTooSmall<T>) then) =
      _$CurrencyTooSmallCopyWithImpl<T, $Res>;
  @override
  $Res call({double min, T failedValue});
}

/// @nodoc
class _$CurrencyTooSmallCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $CurrencyTooSmallCopyWith<T, $Res> {
  _$CurrencyTooSmallCopyWithImpl(
      CurrencyTooSmall<T> _value, $Res Function(CurrencyTooSmall<T>) _then)
      : super(_value, (v) => _then(v as CurrencyTooSmall<T>));

  @override
  CurrencyTooSmall<T> get _value => super._value as CurrencyTooSmall<T>;

  @override
  $Res call({
    Object? min = freezed,
    Object? failedValue = freezed,
  }) {
    return _then(CurrencyTooSmall<T>(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CurrencyTooSmall<T> implements CurrencyTooSmall<T> {
  const _$CurrencyTooSmall({required this.min, required this.failedValue});

  @override
  final double min;
  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.currencyTooSmall(min: $min, failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrencyTooSmall<T> &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $CurrencyTooSmallCopyWith<T, CurrencyTooSmall<T>> get copyWith =>
      _$CurrencyTooSmallCopyWithImpl<T, CurrencyTooSmall<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unknownCurrency,
    required TResult Function(double max, T failedValue) currencyTooBig,
    required TResult Function(double min, T failedValue) currencyTooSmall,
    required TResult Function(T failedValue) invalidStringToDouble,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return currencyTooSmall(min, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? unknownCurrency,
    TResult Function(double max, T failedValue)? currencyTooBig,
    TResult Function(double min, T failedValue)? currencyTooSmall,
    TResult Function(T failedValue)? invalidStringToDouble,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
  }) {
    return currencyTooSmall?.call(min, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unknownCurrency,
    TResult Function(double max, T failedValue)? currencyTooBig,
    TResult Function(double min, T failedValue)? currencyTooSmall,
    TResult Function(T failedValue)? invalidStringToDouble,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (currencyTooSmall != null) {
      return currencyTooSmall(min, failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCurrency<T> value) unknownCurrency,
    required TResult Function(CurrencyTooBig<T> value) currencyTooBig,
    required TResult Function(CurrencyTooSmall<T> value) currencyTooSmall,
    required TResult Function(InvalidStringToDouble<T> value)
        invalidStringToDouble,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return currencyTooSmall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownCurrency<T> value)? unknownCurrency,
    TResult Function(CurrencyTooBig<T> value)? currencyTooBig,
    TResult Function(CurrencyTooSmall<T> value)? currencyTooSmall,
    TResult Function(InvalidStringToDouble<T> value)? invalidStringToDouble,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
  }) {
    return currencyTooSmall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCurrency<T> value)? unknownCurrency,
    TResult Function(CurrencyTooBig<T> value)? currencyTooBig,
    TResult Function(CurrencyTooSmall<T> value)? currencyTooSmall,
    TResult Function(InvalidStringToDouble<T> value)? invalidStringToDouble,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (currencyTooSmall != null) {
      return currencyTooSmall(this);
    }
    return orElse();
  }
}

abstract class CurrencyTooSmall<T> implements ValueFailure<T> {
  const factory CurrencyTooSmall(
      {required double min, required T failedValue}) = _$CurrencyTooSmall<T>;

  double get min;
  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $CurrencyTooSmallCopyWith<T, CurrencyTooSmall<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidStringToDoubleCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidStringToDoubleCopyWith(InvalidStringToDouble<T> value,
          $Res Function(InvalidStringToDouble<T>) then) =
      _$InvalidStringToDoubleCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidStringToDoubleCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidStringToDoubleCopyWith<T, $Res> {
  _$InvalidStringToDoubleCopyWithImpl(InvalidStringToDouble<T> _value,
      $Res Function(InvalidStringToDouble<T>) _then)
      : super(_value, (v) => _then(v as InvalidStringToDouble<T>));

  @override
  InvalidStringToDouble<T> get _value =>
      super._value as InvalidStringToDouble<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidStringToDouble<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidStringToDouble<T> implements InvalidStringToDouble<T> {
  const _$InvalidStringToDouble({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidStringToDouble(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidStringToDouble<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidStringToDoubleCopyWith<T, InvalidStringToDouble<T>> get copyWith =>
      _$InvalidStringToDoubleCopyWithImpl<T, InvalidStringToDouble<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unknownCurrency,
    required TResult Function(double max, T failedValue) currencyTooBig,
    required TResult Function(double min, T failedValue) currencyTooSmall,
    required TResult Function(T failedValue) invalidStringToDouble,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return invalidStringToDouble(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? unknownCurrency,
    TResult Function(double max, T failedValue)? currencyTooBig,
    TResult Function(double min, T failedValue)? currencyTooSmall,
    TResult Function(T failedValue)? invalidStringToDouble,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
  }) {
    return invalidStringToDouble?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unknownCurrency,
    TResult Function(double max, T failedValue)? currencyTooBig,
    TResult Function(double min, T failedValue)? currencyTooSmall,
    TResult Function(T failedValue)? invalidStringToDouble,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidStringToDouble != null) {
      return invalidStringToDouble(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCurrency<T> value) unknownCurrency,
    required TResult Function(CurrencyTooBig<T> value) currencyTooBig,
    required TResult Function(CurrencyTooSmall<T> value) currencyTooSmall,
    required TResult Function(InvalidStringToDouble<T> value)
        invalidStringToDouble,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return invalidStringToDouble(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownCurrency<T> value)? unknownCurrency,
    TResult Function(CurrencyTooBig<T> value)? currencyTooBig,
    TResult Function(CurrencyTooSmall<T> value)? currencyTooSmall,
    TResult Function(InvalidStringToDouble<T> value)? invalidStringToDouble,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
  }) {
    return invalidStringToDouble?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCurrency<T> value)? unknownCurrency,
    TResult Function(CurrencyTooBig<T> value)? currencyTooBig,
    TResult Function(CurrencyTooSmall<T> value)? currencyTooSmall,
    TResult Function(InvalidStringToDouble<T> value)? invalidStringToDouble,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidStringToDouble != null) {
      return invalidStringToDouble(this);
    }
    return orElse();
  }
}

abstract class InvalidStringToDouble<T> implements ValueFailure<T> {
  const factory InvalidStringToDouble({required T failedValue}) =
      _$InvalidStringToDouble<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidStringToDoubleCopyWith<T, InvalidStringToDouble<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unknownCurrency,
    required TResult Function(double max, T failedValue) currencyTooBig,
    required TResult Function(double min, T failedValue) currencyTooSmall,
    required TResult Function(T failedValue) invalidStringToDouble,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? unknownCurrency,
    TResult Function(double max, T failedValue)? currencyTooBig,
    TResult Function(double min, T failedValue)? currencyTooSmall,
    TResult Function(T failedValue)? invalidStringToDouble,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unknownCurrency,
    TResult Function(double max, T failedValue)? currencyTooBig,
    TResult Function(double min, T failedValue)? currencyTooSmall,
    TResult Function(T failedValue)? invalidStringToDouble,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCurrency<T> value) unknownCurrency,
    required TResult Function(CurrencyTooBig<T> value) currencyTooBig,
    required TResult Function(CurrencyTooSmall<T> value) currencyTooSmall,
    required TResult Function(InvalidStringToDouble<T> value)
        invalidStringToDouble,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownCurrency<T> value)? unknownCurrency,
    TResult Function(CurrencyTooBig<T> value)? currencyTooBig,
    TResult Function(CurrencyTooSmall<T> value)? currencyTooSmall,
    TResult Function(InvalidStringToDouble<T> value)? invalidStringToDouble,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCurrency<T> value)? unknownCurrency,
    TResult Function(CurrencyTooBig<T> value)? currencyTooBig,
    TResult Function(CurrencyTooSmall<T> value)? currencyTooSmall,
    TResult Function(InvalidStringToDouble<T> value)? invalidStringToDouble,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) unknownCurrency,
    required TResult Function(double max, T failedValue) currencyTooBig,
    required TResult Function(double min, T failedValue) currencyTooSmall,
    required TResult Function(T failedValue) invalidStringToDouble,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? unknownCurrency,
    TResult Function(double max, T failedValue)? currencyTooBig,
    TResult Function(double min, T failedValue)? currencyTooSmall,
    TResult Function(T failedValue)? invalidStringToDouble,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? unknownCurrency,
    TResult Function(double max, T failedValue)? currencyTooBig,
    TResult Function(double min, T failedValue)? currencyTooSmall,
    TResult Function(T failedValue)? invalidStringToDouble,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownCurrency<T> value) unknownCurrency,
    required TResult Function(CurrencyTooBig<T> value) currencyTooBig,
    required TResult Function(CurrencyTooSmall<T> value) currencyTooSmall,
    required TResult Function(InvalidStringToDouble<T> value)
        invalidStringToDouble,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknownCurrency<T> value)? unknownCurrency,
    TResult Function(CurrencyTooBig<T> value)? currencyTooBig,
    TResult Function(CurrencyTooSmall<T> value)? currencyTooSmall,
    TResult Function(InvalidStringToDouble<T> value)? invalidStringToDouble,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownCurrency<T> value)? unknownCurrency,
    TResult Function(CurrencyTooBig<T> value)? currencyTooBig,
    TResult Function(CurrencyTooSmall<T> value)? currencyTooSmall,
    TResult Function(InvalidStringToDouble<T> value)? invalidStringToDouble,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
