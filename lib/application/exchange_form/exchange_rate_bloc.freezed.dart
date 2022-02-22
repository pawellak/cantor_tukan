// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exchange_rate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExchangeRateEventTearOff {
  const _$ExchangeRateEventTearOff();

  _FetchExchangeRate fetch() {
    return const _FetchExchangeRate();
  }

  _FetchedExchangeRate fetched(ExchangeRate exchangeRate) {
    return _FetchedExchangeRate(
      exchangeRate,
    );
  }
}

/// @nodoc
const $ExchangeRateEvent = _$ExchangeRateEventTearOff();

/// @nodoc
mixin _$ExchangeRateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(ExchangeRate exchangeRate) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(ExchangeRate exchangeRate)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(ExchangeRate exchangeRate)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExchangeRate value) fetch,
    required TResult Function(_FetchedExchangeRate value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchExchangeRate value)? fetch,
    TResult Function(_FetchedExchangeRate value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExchangeRate value)? fetch,
    TResult Function(_FetchedExchangeRate value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateEventCopyWith<$Res> {
  factory $ExchangeRateEventCopyWith(
          ExchangeRateEvent value, $Res Function(ExchangeRateEvent) then) =
      _$ExchangeRateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExchangeRateEventCopyWithImpl<$Res>
    implements $ExchangeRateEventCopyWith<$Res> {
  _$ExchangeRateEventCopyWithImpl(this._value, this._then);

  final ExchangeRateEvent _value;
  // ignore: unused_field
  final $Res Function(ExchangeRateEvent) _then;
}

/// @nodoc
abstract class _$FetchExchangeRateCopyWith<$Res> {
  factory _$FetchExchangeRateCopyWith(
          _FetchExchangeRate value, $Res Function(_FetchExchangeRate) then) =
      __$FetchExchangeRateCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchExchangeRateCopyWithImpl<$Res>
    extends _$ExchangeRateEventCopyWithImpl<$Res>
    implements _$FetchExchangeRateCopyWith<$Res> {
  __$FetchExchangeRateCopyWithImpl(
      _FetchExchangeRate _value, $Res Function(_FetchExchangeRate) _then)
      : super(_value, (v) => _then(v as _FetchExchangeRate));

  @override
  _FetchExchangeRate get _value => super._value as _FetchExchangeRate;
}

/// @nodoc

class _$_FetchExchangeRate implements _FetchExchangeRate {
  const _$_FetchExchangeRate();

  @override
  String toString() {
    return 'ExchangeRateEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchExchangeRate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(ExchangeRate exchangeRate) fetched,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(ExchangeRate exchangeRate)? fetched,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(ExchangeRate exchangeRate)? fetched,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExchangeRate value) fetch,
    required TResult Function(_FetchedExchangeRate value) fetched,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchExchangeRate value)? fetch,
    TResult Function(_FetchedExchangeRate value)? fetched,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExchangeRate value)? fetch,
    TResult Function(_FetchedExchangeRate value)? fetched,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchExchangeRate implements ExchangeRateEvent {
  const factory _FetchExchangeRate() = _$_FetchExchangeRate;
}

/// @nodoc
abstract class _$FetchedExchangeRateCopyWith<$Res> {
  factory _$FetchedExchangeRateCopyWith(_FetchedExchangeRate value,
          $Res Function(_FetchedExchangeRate) then) =
      __$FetchedExchangeRateCopyWithImpl<$Res>;
  $Res call({ExchangeRate exchangeRate});

  $ExchangeRateCopyWith<$Res> get exchangeRate;
}

/// @nodoc
class __$FetchedExchangeRateCopyWithImpl<$Res>
    extends _$ExchangeRateEventCopyWithImpl<$Res>
    implements _$FetchedExchangeRateCopyWith<$Res> {
  __$FetchedExchangeRateCopyWithImpl(
      _FetchedExchangeRate _value, $Res Function(_FetchedExchangeRate) _then)
      : super(_value, (v) => _then(v as _FetchedExchangeRate));

  @override
  _FetchedExchangeRate get _value => super._value as _FetchedExchangeRate;

  @override
  $Res call({
    Object? exchangeRate = freezed,
  }) {
    return _then(_FetchedExchangeRate(
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

class _$_FetchedExchangeRate implements _FetchedExchangeRate {
  const _$_FetchedExchangeRate(this.exchangeRate);

  @override
  final ExchangeRate exchangeRate;

  @override
  String toString() {
    return 'ExchangeRateEvent.fetched(exchangeRate: $exchangeRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchedExchangeRate &&
            const DeepCollectionEquality()
                .equals(other.exchangeRate, exchangeRate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(exchangeRate));

  @JsonKey(ignore: true)
  @override
  _$FetchedExchangeRateCopyWith<_FetchedExchangeRate> get copyWith =>
      __$FetchedExchangeRateCopyWithImpl<_FetchedExchangeRate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(ExchangeRate exchangeRate) fetched,
  }) {
    return fetched(exchangeRate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(ExchangeRate exchangeRate)? fetched,
  }) {
    return fetched?.call(exchangeRate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(ExchangeRate exchangeRate)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(exchangeRate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExchangeRate value) fetch,
    required TResult Function(_FetchedExchangeRate value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchExchangeRate value)? fetch,
    TResult Function(_FetchedExchangeRate value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExchangeRate value)? fetch,
    TResult Function(_FetchedExchangeRate value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _FetchedExchangeRate implements ExchangeRateEvent {
  const factory _FetchedExchangeRate(ExchangeRate exchangeRate) =
      _$_FetchedExchangeRate;

  ExchangeRate get exchangeRate;
  @JsonKey(ignore: true)
  _$FetchedExchangeRateCopyWith<_FetchedExchangeRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExchangeRateStateTearOff {
  const _$ExchangeRateStateTearOff();

  _ExchangeRateState call(
      {required KtList<ExchangeRate> exchangeRate,
      required ExchangeDate exchangeDate,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool isExchangeRateSelected,
      required ExchangeRate exchangeRateSelected,
      required Option<Either<CantorRemoteFailure, Unit>>
          failureOrSuccessOption}) {
    return _ExchangeRateState(
      exchangeRate: exchangeRate,
      exchangeDate: exchangeDate,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      isExchangeRateSelected: isExchangeRateSelected,
      exchangeRateSelected: exchangeRateSelected,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ExchangeRateState = _$ExchangeRateStateTearOff();

/// @nodoc
mixin _$ExchangeRateState {
  KtList<ExchangeRate> get exchangeRate => throw _privateConstructorUsedError;
  ExchangeDate get exchangeDate => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isExchangeRateSelected => throw _privateConstructorUsedError;
  ExchangeRate get exchangeRateSelected => throw _privateConstructorUsedError;
  Option<Either<CantorRemoteFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeRateStateCopyWith<ExchangeRateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateStateCopyWith<$Res> {
  factory $ExchangeRateStateCopyWith(
          ExchangeRateState value, $Res Function(ExchangeRateState) then) =
      _$ExchangeRateStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<ExchangeRate> exchangeRate,
      ExchangeDate exchangeDate,
      bool showErrorMessages,
      bool isSubmitting,
      bool isExchangeRateSelected,
      ExchangeRate exchangeRateSelected,
      Option<Either<CantorRemoteFailure, Unit>> failureOrSuccessOption});

  $ExchangeDateCopyWith<$Res> get exchangeDate;
  $ExchangeRateCopyWith<$Res> get exchangeRateSelected;
}

/// @nodoc
class _$ExchangeRateStateCopyWithImpl<$Res>
    implements $ExchangeRateStateCopyWith<$Res> {
  _$ExchangeRateStateCopyWithImpl(this._value, this._then);

  final ExchangeRateState _value;
  // ignore: unused_field
  final $Res Function(ExchangeRateState) _then;

  @override
  $Res call({
    Object? exchangeRate = freezed,
    Object? exchangeDate = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? isExchangeRateSelected = freezed,
    Object? exchangeRateSelected = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      exchangeRate: exchangeRate == freezed
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as KtList<ExchangeRate>,
      exchangeDate: exchangeDate == freezed
          ? _value.exchangeDate
          : exchangeDate // ignore: cast_nullable_to_non_nullable
              as ExchangeDate,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isExchangeRateSelected: isExchangeRateSelected == freezed
          ? _value.isExchangeRateSelected
          : isExchangeRateSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      exchangeRateSelected: exchangeRateSelected == freezed
          ? _value.exchangeRateSelected
          : exchangeRateSelected // ignore: cast_nullable_to_non_nullable
              as ExchangeRate,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CantorRemoteFailure, Unit>>,
    ));
  }

  @override
  $ExchangeDateCopyWith<$Res> get exchangeDate {
    return $ExchangeDateCopyWith<$Res>(_value.exchangeDate, (value) {
      return _then(_value.copyWith(exchangeDate: value));
    });
  }

  @override
  $ExchangeRateCopyWith<$Res> get exchangeRateSelected {
    return $ExchangeRateCopyWith<$Res>(_value.exchangeRateSelected, (value) {
      return _then(_value.copyWith(exchangeRateSelected: value));
    });
  }
}

/// @nodoc
abstract class _$ExchangeRateStateCopyWith<$Res>
    implements $ExchangeRateStateCopyWith<$Res> {
  factory _$ExchangeRateStateCopyWith(
          _ExchangeRateState value, $Res Function(_ExchangeRateState) then) =
      __$ExchangeRateStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<ExchangeRate> exchangeRate,
      ExchangeDate exchangeDate,
      bool showErrorMessages,
      bool isSubmitting,
      bool isExchangeRateSelected,
      ExchangeRate exchangeRateSelected,
      Option<Either<CantorRemoteFailure, Unit>> failureOrSuccessOption});

  @override
  $ExchangeDateCopyWith<$Res> get exchangeDate;
  @override
  $ExchangeRateCopyWith<$Res> get exchangeRateSelected;
}

/// @nodoc
class __$ExchangeRateStateCopyWithImpl<$Res>
    extends _$ExchangeRateStateCopyWithImpl<$Res>
    implements _$ExchangeRateStateCopyWith<$Res> {
  __$ExchangeRateStateCopyWithImpl(
      _ExchangeRateState _value, $Res Function(_ExchangeRateState) _then)
      : super(_value, (v) => _then(v as _ExchangeRateState));

  @override
  _ExchangeRateState get _value => super._value as _ExchangeRateState;

  @override
  $Res call({
    Object? exchangeRate = freezed,
    Object? exchangeDate = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? isExchangeRateSelected = freezed,
    Object? exchangeRateSelected = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_ExchangeRateState(
      exchangeRate: exchangeRate == freezed
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as KtList<ExchangeRate>,
      exchangeDate: exchangeDate == freezed
          ? _value.exchangeDate
          : exchangeDate // ignore: cast_nullable_to_non_nullable
              as ExchangeDate,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isExchangeRateSelected: isExchangeRateSelected == freezed
          ? _value.isExchangeRateSelected
          : isExchangeRateSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      exchangeRateSelected: exchangeRateSelected == freezed
          ? _value.exchangeRateSelected
          : exchangeRateSelected // ignore: cast_nullable_to_non_nullable
              as ExchangeRate,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CantorRemoteFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ExchangeRateState implements _ExchangeRateState {
  const _$_ExchangeRateState(
      {required this.exchangeRate,
      required this.exchangeDate,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.isExchangeRateSelected,
      required this.exchangeRateSelected,
      required this.failureOrSuccessOption});

  @override
  final KtList<ExchangeRate> exchangeRate;
  @override
  final ExchangeDate exchangeDate;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool isExchangeRateSelected;
  @override
  final ExchangeRate exchangeRateSelected;
  @override
  final Option<Either<CantorRemoteFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ExchangeRateState(exchangeRate: $exchangeRate, exchangeDate: $exchangeDate, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, isExchangeRateSelected: $isExchangeRateSelected, exchangeRateSelected: $exchangeRateSelected, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExchangeRateState &&
            const DeepCollectionEquality()
                .equals(other.exchangeRate, exchangeRate) &&
            const DeepCollectionEquality()
                .equals(other.exchangeDate, exchangeDate) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.isExchangeRateSelected, isExchangeRateSelected) &&
            const DeepCollectionEquality()
                .equals(other.exchangeRateSelected, exchangeRateSelected) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccessOption, failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exchangeRate),
      const DeepCollectionEquality().hash(exchangeDate),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(isExchangeRateSelected),
      const DeepCollectionEquality().hash(exchangeRateSelected),
      const DeepCollectionEquality().hash(failureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$ExchangeRateStateCopyWith<_ExchangeRateState> get copyWith =>
      __$ExchangeRateStateCopyWithImpl<_ExchangeRateState>(this, _$identity);
}

abstract class _ExchangeRateState implements ExchangeRateState {
  const factory _ExchangeRateState(
      {required KtList<ExchangeRate> exchangeRate,
      required ExchangeDate exchangeDate,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool isExchangeRateSelected,
      required ExchangeRate exchangeRateSelected,
      required Option<Either<CantorRemoteFailure, Unit>>
          failureOrSuccessOption}) = _$_ExchangeRateState;

  @override
  KtList<ExchangeRate> get exchangeRate;
  @override
  ExchangeDate get exchangeDate;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  bool get isExchangeRateSelected;
  @override
  ExchangeRate get exchangeRateSelected;
  @override
  Option<Either<CantorRemoteFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$ExchangeRateStateCopyWith<_ExchangeRateState> get copyWith =>
      throw _privateConstructorUsedError;
}
