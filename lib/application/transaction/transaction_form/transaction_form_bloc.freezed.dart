// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionFormEventTearOff {
  const _$TransactionFormEventTearOff();

  _CurrencyValueChanged currencyValueChanged(CurrencyValue currencyValue) {
    return _CurrencyValueChanged(
      currencyValue,
    );
  }

  _TransactionConfirmed transactionConfirmed() {
    return const _TransactionConfirmed();
  }

  _SetBill setBill() {
    return const _SetBill();
  }

  _SetDate setDate() {
    return const _SetDate();
  }

  _Reset reset() {
    return const _Reset();
  }

  _ExchangeRateSelected exchangeRateSelected(ExchangeRate exchangeRate) {
    return _ExchangeRateSelected(
      exchangeRate,
    );
  }

  _TransactionTypeSelected transactionTypeSelected(
      TransactionType transactionType) {
    return _TransactionTypeSelected(
      transactionType,
    );
  }
}

/// @nodoc
const $TransactionFormEvent = _$TransactionFormEventTearOff();

/// @nodoc
mixin _$TransactionFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyValue currencyValue) currencyValueChanged,
    required TResult Function() transactionConfirmed,
    required TResult Function() setBill,
    required TResult Function() setDate,
    required TResult Function() reset,
    required TResult Function(ExchangeRate exchangeRate) exchangeRateSelected,
    required TResult Function(TransactionType transactionType)
        transactionTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrencyValueChanged value) currencyValueChanged,
    required TResult Function(_TransactionConfirmed value) transactionConfirmed,
    required TResult Function(_SetBill value) setBill,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ExchangeRateSelected value) exchangeRateSelected,
    required TResult Function(_TransactionTypeSelected value)
        transactionTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionFormEventCopyWith<$Res> {
  factory $TransactionFormEventCopyWith(TransactionFormEvent value,
          $Res Function(TransactionFormEvent) then) =
      _$TransactionFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionFormEventCopyWithImpl<$Res>
    implements $TransactionFormEventCopyWith<$Res> {
  _$TransactionFormEventCopyWithImpl(this._value, this._then);

  final TransactionFormEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionFormEvent) _then;
}

/// @nodoc
abstract class _$CurrencyValueChangedCopyWith<$Res> {
  factory _$CurrencyValueChangedCopyWith(_CurrencyValueChanged value,
          $Res Function(_CurrencyValueChanged) then) =
      __$CurrencyValueChangedCopyWithImpl<$Res>;
  $Res call({CurrencyValue currencyValue});
}

/// @nodoc
class __$CurrencyValueChangedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements _$CurrencyValueChangedCopyWith<$Res> {
  __$CurrencyValueChangedCopyWithImpl(
      _CurrencyValueChanged _value, $Res Function(_CurrencyValueChanged) _then)
      : super(_value, (v) => _then(v as _CurrencyValueChanged));

  @override
  _CurrencyValueChanged get _value => super._value as _CurrencyValueChanged;

  @override
  $Res call({
    Object? currencyValue = freezed,
  }) {
    return _then(_CurrencyValueChanged(
      currencyValue == freezed
          ? _value.currencyValue
          : currencyValue // ignore: cast_nullable_to_non_nullable
              as CurrencyValue,
    ));
  }
}

/// @nodoc

class _$_CurrencyValueChanged implements _CurrencyValueChanged {
  const _$_CurrencyValueChanged(this.currencyValue);

  @override
  final CurrencyValue currencyValue;

  @override
  String toString() {
    return 'TransactionFormEvent.currencyValueChanged(currencyValue: $currencyValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrencyValueChanged &&
            const DeepCollectionEquality()
                .equals(other.currencyValue, currencyValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currencyValue));

  @JsonKey(ignore: true)
  @override
  _$CurrencyValueChangedCopyWith<_CurrencyValueChanged> get copyWith =>
      __$CurrencyValueChangedCopyWithImpl<_CurrencyValueChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyValue currencyValue) currencyValueChanged,
    required TResult Function() transactionConfirmed,
    required TResult Function() setBill,
    required TResult Function() setDate,
    required TResult Function() reset,
    required TResult Function(ExchangeRate exchangeRate) exchangeRateSelected,
    required TResult Function(TransactionType transactionType)
        transactionTypeSelected,
  }) {
    return currencyValueChanged(currencyValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
  }) {
    return currencyValueChanged?.call(currencyValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
    required TResult orElse(),
  }) {
    if (currencyValueChanged != null) {
      return currencyValueChanged(currencyValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrencyValueChanged value) currencyValueChanged,
    required TResult Function(_TransactionConfirmed value) transactionConfirmed,
    required TResult Function(_SetBill value) setBill,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ExchangeRateSelected value) exchangeRateSelected,
    required TResult Function(_TransactionTypeSelected value)
        transactionTypeSelected,
  }) {
    return currencyValueChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
  }) {
    return currencyValueChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
    required TResult orElse(),
  }) {
    if (currencyValueChanged != null) {
      return currencyValueChanged(this);
    }
    return orElse();
  }
}

abstract class _CurrencyValueChanged implements TransactionFormEvent {
  const factory _CurrencyValueChanged(CurrencyValue currencyValue) =
      _$_CurrencyValueChanged;

  CurrencyValue get currencyValue;
  @JsonKey(ignore: true)
  _$CurrencyValueChangedCopyWith<_CurrencyValueChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TransactionConfirmedCopyWith<$Res> {
  factory _$TransactionConfirmedCopyWith(_TransactionConfirmed value,
          $Res Function(_TransactionConfirmed) then) =
      __$TransactionConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$TransactionConfirmedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements _$TransactionConfirmedCopyWith<$Res> {
  __$TransactionConfirmedCopyWithImpl(
      _TransactionConfirmed _value, $Res Function(_TransactionConfirmed) _then)
      : super(_value, (v) => _then(v as _TransactionConfirmed));

  @override
  _TransactionConfirmed get _value => super._value as _TransactionConfirmed;
}

/// @nodoc

class _$_TransactionConfirmed implements _TransactionConfirmed {
  const _$_TransactionConfirmed();

  @override
  String toString() {
    return 'TransactionFormEvent.transactionConfirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TransactionConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyValue currencyValue) currencyValueChanged,
    required TResult Function() transactionConfirmed,
    required TResult Function() setBill,
    required TResult Function() setDate,
    required TResult Function() reset,
    required TResult Function(ExchangeRate exchangeRate) exchangeRateSelected,
    required TResult Function(TransactionType transactionType)
        transactionTypeSelected,
  }) {
    return transactionConfirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
  }) {
    return transactionConfirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
    required TResult orElse(),
  }) {
    if (transactionConfirmed != null) {
      return transactionConfirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrencyValueChanged value) currencyValueChanged,
    required TResult Function(_TransactionConfirmed value) transactionConfirmed,
    required TResult Function(_SetBill value) setBill,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ExchangeRateSelected value) exchangeRateSelected,
    required TResult Function(_TransactionTypeSelected value)
        transactionTypeSelected,
  }) {
    return transactionConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
  }) {
    return transactionConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
    required TResult orElse(),
  }) {
    if (transactionConfirmed != null) {
      return transactionConfirmed(this);
    }
    return orElse();
  }
}

abstract class _TransactionConfirmed implements TransactionFormEvent {
  const factory _TransactionConfirmed() = _$_TransactionConfirmed;
}

/// @nodoc
abstract class _$SetBillCopyWith<$Res> {
  factory _$SetBillCopyWith(_SetBill value, $Res Function(_SetBill) then) =
      __$SetBillCopyWithImpl<$Res>;
}

/// @nodoc
class __$SetBillCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements _$SetBillCopyWith<$Res> {
  __$SetBillCopyWithImpl(_SetBill _value, $Res Function(_SetBill) _then)
      : super(_value, (v) => _then(v as _SetBill));

  @override
  _SetBill get _value => super._value as _SetBill;
}

/// @nodoc

class _$_SetBill implements _SetBill {
  const _$_SetBill();

  @override
  String toString() {
    return 'TransactionFormEvent.setBill()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SetBill);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyValue currencyValue) currencyValueChanged,
    required TResult Function() transactionConfirmed,
    required TResult Function() setBill,
    required TResult Function() setDate,
    required TResult Function() reset,
    required TResult Function(ExchangeRate exchangeRate) exchangeRateSelected,
    required TResult Function(TransactionType transactionType)
        transactionTypeSelected,
  }) {
    return setBill();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
  }) {
    return setBill?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
    required TResult orElse(),
  }) {
    if (setBill != null) {
      return setBill();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrencyValueChanged value) currencyValueChanged,
    required TResult Function(_TransactionConfirmed value) transactionConfirmed,
    required TResult Function(_SetBill value) setBill,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ExchangeRateSelected value) exchangeRateSelected,
    required TResult Function(_TransactionTypeSelected value)
        transactionTypeSelected,
  }) {
    return setBill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
  }) {
    return setBill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
    required TResult orElse(),
  }) {
    if (setBill != null) {
      return setBill(this);
    }
    return orElse();
  }
}

abstract class _SetBill implements TransactionFormEvent {
  const factory _SetBill() = _$_SetBill;
}

/// @nodoc
abstract class _$SetDateCopyWith<$Res> {
  factory _$SetDateCopyWith(_SetDate value, $Res Function(_SetDate) then) =
      __$SetDateCopyWithImpl<$Res>;
}

/// @nodoc
class __$SetDateCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements _$SetDateCopyWith<$Res> {
  __$SetDateCopyWithImpl(_SetDate _value, $Res Function(_SetDate) _then)
      : super(_value, (v) => _then(v as _SetDate));

  @override
  _SetDate get _value => super._value as _SetDate;
}

/// @nodoc

class _$_SetDate implements _SetDate {
  const _$_SetDate();

  @override
  String toString() {
    return 'TransactionFormEvent.setDate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SetDate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyValue currencyValue) currencyValueChanged,
    required TResult Function() transactionConfirmed,
    required TResult Function() setBill,
    required TResult Function() setDate,
    required TResult Function() reset,
    required TResult Function(ExchangeRate exchangeRate) exchangeRateSelected,
    required TResult Function(TransactionType transactionType)
        transactionTypeSelected,
  }) {
    return setDate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
  }) {
    return setDate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
    required TResult orElse(),
  }) {
    if (setDate != null) {
      return setDate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrencyValueChanged value) currencyValueChanged,
    required TResult Function(_TransactionConfirmed value) transactionConfirmed,
    required TResult Function(_SetBill value) setBill,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ExchangeRateSelected value) exchangeRateSelected,
    required TResult Function(_TransactionTypeSelected value)
        transactionTypeSelected,
  }) {
    return setDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
  }) {
    return setDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
    required TResult orElse(),
  }) {
    if (setDate != null) {
      return setDate(this);
    }
    return orElse();
  }
}

abstract class _SetDate implements TransactionFormEvent {
  const factory _SetDate() = _$_SetDate;
}

/// @nodoc
abstract class _$ResetCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements _$ResetCopyWith<$Res> {
  __$ResetCopyWithImpl(_Reset _value, $Res Function(_Reset) _then)
      : super(_value, (v) => _then(v as _Reset));

  @override
  _Reset get _value => super._value as _Reset;
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'TransactionFormEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyValue currencyValue) currencyValueChanged,
    required TResult Function() transactionConfirmed,
    required TResult Function() setBill,
    required TResult Function() setDate,
    required TResult Function() reset,
    required TResult Function(ExchangeRate exchangeRate) exchangeRateSelected,
    required TResult Function(TransactionType transactionType)
        transactionTypeSelected,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrencyValueChanged value) currencyValueChanged,
    required TResult Function(_TransactionConfirmed value) transactionConfirmed,
    required TResult Function(_SetBill value) setBill,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ExchangeRateSelected value) exchangeRateSelected,
    required TResult Function(_TransactionTypeSelected value)
        transactionTypeSelected,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements TransactionFormEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$ExchangeRateSelectedCopyWith<$Res> {
  factory _$ExchangeRateSelectedCopyWith(_ExchangeRateSelected value,
          $Res Function(_ExchangeRateSelected) then) =
      __$ExchangeRateSelectedCopyWithImpl<$Res>;
  $Res call({ExchangeRate exchangeRate});

  $ExchangeRateCopyWith<$Res> get exchangeRate;
}

/// @nodoc
class __$ExchangeRateSelectedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements _$ExchangeRateSelectedCopyWith<$Res> {
  __$ExchangeRateSelectedCopyWithImpl(
      _ExchangeRateSelected _value, $Res Function(_ExchangeRateSelected) _then)
      : super(_value, (v) => _then(v as _ExchangeRateSelected));

  @override
  _ExchangeRateSelected get _value => super._value as _ExchangeRateSelected;

  @override
  $Res call({
    Object? exchangeRate = freezed,
  }) {
    return _then(_ExchangeRateSelected(
      exchangeRate == freezed
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as ExchangeRate,
    ));
  }

  @override
  $ExchangeRateCopyWith<$Res> get exchangeRate {
    return $ExchangeRateCopyWith<$Res>(_value.exchangeRate, (value) {
      return _then(_value.copyWith(exchangeRate: value));
    });
  }
}

/// @nodoc

class _$_ExchangeRateSelected implements _ExchangeRateSelected {
  const _$_ExchangeRateSelected(this.exchangeRate);

  @override
  final ExchangeRate exchangeRate;

  @override
  String toString() {
    return 'TransactionFormEvent.exchangeRateSelected(exchangeRate: $exchangeRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExchangeRateSelected &&
            const DeepCollectionEquality()
                .equals(other.exchangeRate, exchangeRate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(exchangeRate));

  @JsonKey(ignore: true)
  @override
  _$ExchangeRateSelectedCopyWith<_ExchangeRateSelected> get copyWith =>
      __$ExchangeRateSelectedCopyWithImpl<_ExchangeRateSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyValue currencyValue) currencyValueChanged,
    required TResult Function() transactionConfirmed,
    required TResult Function() setBill,
    required TResult Function() setDate,
    required TResult Function() reset,
    required TResult Function(ExchangeRate exchangeRate) exchangeRateSelected,
    required TResult Function(TransactionType transactionType)
        transactionTypeSelected,
  }) {
    return exchangeRateSelected(exchangeRate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
  }) {
    return exchangeRateSelected?.call(exchangeRate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
    required TResult orElse(),
  }) {
    if (exchangeRateSelected != null) {
      return exchangeRateSelected(exchangeRate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrencyValueChanged value) currencyValueChanged,
    required TResult Function(_TransactionConfirmed value) transactionConfirmed,
    required TResult Function(_SetBill value) setBill,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ExchangeRateSelected value) exchangeRateSelected,
    required TResult Function(_TransactionTypeSelected value)
        transactionTypeSelected,
  }) {
    return exchangeRateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
  }) {
    return exchangeRateSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
    required TResult orElse(),
  }) {
    if (exchangeRateSelected != null) {
      return exchangeRateSelected(this);
    }
    return orElse();
  }
}

abstract class _ExchangeRateSelected implements TransactionFormEvent {
  const factory _ExchangeRateSelected(ExchangeRate exchangeRate) =
      _$_ExchangeRateSelected;

  ExchangeRate get exchangeRate;
  @JsonKey(ignore: true)
  _$ExchangeRateSelectedCopyWith<_ExchangeRateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TransactionTypeSelectedCopyWith<$Res> {
  factory _$TransactionTypeSelectedCopyWith(_TransactionTypeSelected value,
          $Res Function(_TransactionTypeSelected) then) =
      __$TransactionTypeSelectedCopyWithImpl<$Res>;
  $Res call({TransactionType transactionType});
}

/// @nodoc
class __$TransactionTypeSelectedCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res>
    implements _$TransactionTypeSelectedCopyWith<$Res> {
  __$TransactionTypeSelectedCopyWithImpl(_TransactionTypeSelected _value,
      $Res Function(_TransactionTypeSelected) _then)
      : super(_value, (v) => _then(v as _TransactionTypeSelected));

  @override
  _TransactionTypeSelected get _value =>
      super._value as _TransactionTypeSelected;

  @override
  $Res call({
    Object? transactionType = freezed,
  }) {
    return _then(_TransactionTypeSelected(
      transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
    ));
  }
}

/// @nodoc

class _$_TransactionTypeSelected implements _TransactionTypeSelected {
  const _$_TransactionTypeSelected(this.transactionType);

  @override
  final TransactionType transactionType;

  @override
  String toString() {
    return 'TransactionFormEvent.transactionTypeSelected(transactionType: $transactionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionTypeSelected &&
            const DeepCollectionEquality()
                .equals(other.transactionType, transactionType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactionType));

  @JsonKey(ignore: true)
  @override
  _$TransactionTypeSelectedCopyWith<_TransactionTypeSelected> get copyWith =>
      __$TransactionTypeSelectedCopyWithImpl<_TransactionTypeSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyValue currencyValue) currencyValueChanged,
    required TResult Function() transactionConfirmed,
    required TResult Function() setBill,
    required TResult Function() setDate,
    required TResult Function() reset,
    required TResult Function(ExchangeRate exchangeRate) exchangeRateSelected,
    required TResult Function(TransactionType transactionType)
        transactionTypeSelected,
  }) {
    return transactionTypeSelected(transactionType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
  }) {
    return transactionTypeSelected?.call(transactionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyValue currencyValue)? currencyValueChanged,
    TResult Function()? transactionConfirmed,
    TResult Function()? setBill,
    TResult Function()? setDate,
    TResult Function()? reset,
    TResult Function(ExchangeRate exchangeRate)? exchangeRateSelected,
    TResult Function(TransactionType transactionType)? transactionTypeSelected,
    required TResult orElse(),
  }) {
    if (transactionTypeSelected != null) {
      return transactionTypeSelected(transactionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrencyValueChanged value) currencyValueChanged,
    required TResult Function(_TransactionConfirmed value) transactionConfirmed,
    required TResult Function(_SetBill value) setBill,
    required TResult Function(_SetDate value) setDate,
    required TResult Function(_Reset value) reset,
    required TResult Function(_ExchangeRateSelected value) exchangeRateSelected,
    required TResult Function(_TransactionTypeSelected value)
        transactionTypeSelected,
  }) {
    return transactionTypeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
  }) {
    return transactionTypeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrencyValueChanged value)? currencyValueChanged,
    TResult Function(_TransactionConfirmed value)? transactionConfirmed,
    TResult Function(_SetBill value)? setBill,
    TResult Function(_SetDate value)? setDate,
    TResult Function(_Reset value)? reset,
    TResult Function(_ExchangeRateSelected value)? exchangeRateSelected,
    TResult Function(_TransactionTypeSelected value)? transactionTypeSelected,
    required TResult orElse(),
  }) {
    if (transactionTypeSelected != null) {
      return transactionTypeSelected(this);
    }
    return orElse();
  }
}

abstract class _TransactionTypeSelected implements TransactionFormEvent {
  const factory _TransactionTypeSelected(TransactionType transactionType) =
      _$_TransactionTypeSelected;

  TransactionType get transactionType;
  @JsonKey(ignore: true)
  _$TransactionTypeSelectedCopyWith<_TransactionTypeSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TransactionFormStateTearOff {
  const _$TransactionFormStateTearOff();

  _TransactionFormState call(
      {required Transaction transaction,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<TransactionFailure, Unit>>
          transactionFailureOrSuccessOption}) {
    return _TransactionFormState(
      transaction: transaction,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      transactionFailureOrSuccessOption: transactionFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $TransactionFormState = _$TransactionFormStateTearOff();

/// @nodoc
mixin _$TransactionFormState {
  Transaction get transaction => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<TransactionFailure, Unit>>
      get transactionFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionFormStateCopyWith<TransactionFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionFormStateCopyWith<$Res> {
  factory $TransactionFormStateCopyWith(TransactionFormState value,
          $Res Function(TransactionFormState) then) =
      _$TransactionFormStateCopyWithImpl<$Res>;
  $Res call(
      {Transaction transaction,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<TransactionFailure, Unit>>
          transactionFailureOrSuccessOption});

  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class _$TransactionFormStateCopyWithImpl<$Res>
    implements $TransactionFormStateCopyWith<$Res> {
  _$TransactionFormStateCopyWithImpl(this._value, this._then);

  final TransactionFormState _value;
  // ignore: unused_field
  final $Res Function(TransactionFormState) _then;

  @override
  $Res call({
    Object? transaction = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? transactionFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionFailureOrSuccessOption: transactionFailureOrSuccessOption ==
              freezed
          ? _value.transactionFailureOrSuccessOption
          : transactionFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TransactionFailure, Unit>>,
    ));
  }

  @override
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionFormStateCopyWith<$Res>
    implements $TransactionFormStateCopyWith<$Res> {
  factory _$TransactionFormStateCopyWith(_TransactionFormState value,
          $Res Function(_TransactionFormState) then) =
      __$TransactionFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Transaction transaction,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<TransactionFailure, Unit>>
          transactionFailureOrSuccessOption});

  @override
  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class __$TransactionFormStateCopyWithImpl<$Res>
    extends _$TransactionFormStateCopyWithImpl<$Res>
    implements _$TransactionFormStateCopyWith<$Res> {
  __$TransactionFormStateCopyWithImpl(
      _TransactionFormState _value, $Res Function(_TransactionFormState) _then)
      : super(_value, (v) => _then(v as _TransactionFormState));

  @override
  _TransactionFormState get _value => super._value as _TransactionFormState;

  @override
  $Res call({
    Object? transaction = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? transactionFailureOrSuccessOption = freezed,
  }) {
    return _then(_TransactionFormState(
      transaction: transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionFailureOrSuccessOption: transactionFailureOrSuccessOption ==
              freezed
          ? _value.transactionFailureOrSuccessOption
          : transactionFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TransactionFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_TransactionFormState implements _TransactionFormState {
  const _$_TransactionFormState(
      {required this.transaction,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.transactionFailureOrSuccessOption});

  @override
  final Transaction transaction;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<TransactionFailure, Unit>>
      transactionFailureOrSuccessOption;

  @override
  String toString() {
    return 'TransactionFormState(transaction: $transaction, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, transactionFailureOrSuccessOption: $transactionFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionFormState &&
            const DeepCollectionEquality()
                .equals(other.transaction, transaction) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.transactionFailureOrSuccessOption,
                transactionFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transaction),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(transactionFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$TransactionFormStateCopyWith<_TransactionFormState> get copyWith =>
      __$TransactionFormStateCopyWithImpl<_TransactionFormState>(
          this, _$identity);
}

abstract class _TransactionFormState implements TransactionFormState {
  const factory _TransactionFormState(
      {required Transaction transaction,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<TransactionFailure, Unit>>
          transactionFailureOrSuccessOption}) = _$_TransactionFormState;

  @override
  Transaction get transaction;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<TransactionFailure, Unit>>
      get transactionFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$TransactionFormStateCopyWith<_TransactionFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
