// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'internet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InternetEventTearOff {
  const _$InternetEventTearOff();

  _CheckConnection checkConnection() {
    return const _CheckConnection();
  }

  _SetNoInternetConnection setNoInternetConnection() {
    return const _SetNoInternetConnection();
  }
}

/// @nodoc
const $InternetEvent = _$InternetEventTearOff();

/// @nodoc
mixin _$InternetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConnection,
    required TResult Function() setNoInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function()? setNoInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function()? setNoInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConnection value) checkConnection,
    required TResult Function(_SetNoInternetConnection value)
        setNoInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_SetNoInternetConnection value)? setNoInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_SetNoInternetConnection value)? setNoInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetEventCopyWith<$Res> {
  factory $InternetEventCopyWith(
          InternetEvent value, $Res Function(InternetEvent) then) =
      _$InternetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternetEventCopyWithImpl<$Res>
    implements $InternetEventCopyWith<$Res> {
  _$InternetEventCopyWithImpl(this._value, this._then);

  final InternetEvent _value;
  // ignore: unused_field
  final $Res Function(InternetEvent) _then;
}

/// @nodoc
abstract class _$CheckConnectionCopyWith<$Res> {
  factory _$CheckConnectionCopyWith(
          _CheckConnection value, $Res Function(_CheckConnection) then) =
      __$CheckConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckConnectionCopyWithImpl<$Res>
    extends _$InternetEventCopyWithImpl<$Res>
    implements _$CheckConnectionCopyWith<$Res> {
  __$CheckConnectionCopyWithImpl(
      _CheckConnection _value, $Res Function(_CheckConnection) _then)
      : super(_value, (v) => _then(v as _CheckConnection));

  @override
  _CheckConnection get _value => super._value as _CheckConnection;
}

/// @nodoc

class _$_CheckConnection implements _CheckConnection {
  const _$_CheckConnection();

  @override
  String toString() {
    return 'InternetEvent.checkConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CheckConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConnection,
    required TResult Function() setNoInternetConnection,
  }) {
    return checkConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function()? setNoInternetConnection,
  }) {
    return checkConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function()? setNoInternetConnection,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConnection value) checkConnection,
    required TResult Function(_SetNoInternetConnection value)
        setNoInternetConnection,
  }) {
    return checkConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_SetNoInternetConnection value)? setNoInternetConnection,
  }) {
    return checkConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_SetNoInternetConnection value)? setNoInternetConnection,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection(this);
    }
    return orElse();
  }
}

abstract class _CheckConnection implements InternetEvent {
  const factory _CheckConnection() = _$_CheckConnection;
}

/// @nodoc
abstract class _$SetNoInternetConnectionCopyWith<$Res> {
  factory _$SetNoInternetConnectionCopyWith(_SetNoInternetConnection value,
          $Res Function(_SetNoInternetConnection) then) =
      __$SetNoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$SetNoInternetConnectionCopyWithImpl<$Res>
    extends _$InternetEventCopyWithImpl<$Res>
    implements _$SetNoInternetConnectionCopyWith<$Res> {
  __$SetNoInternetConnectionCopyWithImpl(_SetNoInternetConnection _value,
      $Res Function(_SetNoInternetConnection) _then)
      : super(_value, (v) => _then(v as _SetNoInternetConnection));

  @override
  _SetNoInternetConnection get _value =>
      super._value as _SetNoInternetConnection;
}

/// @nodoc

class _$_SetNoInternetConnection implements _SetNoInternetConnection {
  const _$_SetNoInternetConnection();

  @override
  String toString() {
    return 'InternetEvent.setNoInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SetNoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConnection,
    required TResult Function() setNoInternetConnection,
  }) {
    return setNoInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function()? setNoInternetConnection,
  }) {
    return setNoInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function()? setNoInternetConnection,
    required TResult orElse(),
  }) {
    if (setNoInternetConnection != null) {
      return setNoInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConnection value) checkConnection,
    required TResult Function(_SetNoInternetConnection value)
        setNoInternetConnection,
  }) {
    return setNoInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_SetNoInternetConnection value)? setNoInternetConnection,
  }) {
    return setNoInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_SetNoInternetConnection value)? setNoInternetConnection,
    required TResult orElse(),
  }) {
    if (setNoInternetConnection != null) {
      return setNoInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _SetNoInternetConnection implements InternetEvent {
  const factory _SetNoInternetConnection() = _$_SetNoInternetConnection;
}

/// @nodoc
class _$InternetStateTearOff {
  const _$InternetStateTearOff();

  _InternetState call({required bool isConnected, required bool isSubmitting}) {
    return _InternetState(
      isConnected: isConnected,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
const $InternetState = _$InternetStateTearOff();

/// @nodoc
mixin _$InternetState {
  bool get isConnected => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InternetStateCopyWith<InternetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetStateCopyWith<$Res> {
  factory $InternetStateCopyWith(
          InternetState value, $Res Function(InternetState) then) =
      _$InternetStateCopyWithImpl<$Res>;
  $Res call({bool isConnected, bool isSubmitting});
}

/// @nodoc
class _$InternetStateCopyWithImpl<$Res>
    implements $InternetStateCopyWith<$Res> {
  _$InternetStateCopyWithImpl(this._value, this._then);

  final InternetState _value;
  // ignore: unused_field
  final $Res Function(InternetState) _then;

  @override
  $Res call({
    Object? isConnected = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InternetStateCopyWith<$Res>
    implements $InternetStateCopyWith<$Res> {
  factory _$InternetStateCopyWith(
          _InternetState value, $Res Function(_InternetState) then) =
      __$InternetStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isConnected, bool isSubmitting});
}

/// @nodoc
class __$InternetStateCopyWithImpl<$Res>
    extends _$InternetStateCopyWithImpl<$Res>
    implements _$InternetStateCopyWith<$Res> {
  __$InternetStateCopyWithImpl(
      _InternetState _value, $Res Function(_InternetState) _then)
      : super(_value, (v) => _then(v as _InternetState));

  @override
  _InternetState get _value => super._value as _InternetState;

  @override
  $Res call({
    Object? isConnected = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_InternetState(
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InternetState implements _InternetState {
  const _$_InternetState(
      {required this.isConnected, required this.isSubmitting});

  @override
  final bool isConnected;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'InternetState(isConnected: $isConnected, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InternetState &&
            const DeepCollectionEquality()
                .equals(other.isConnected, isConnected) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isConnected),
      const DeepCollectionEquality().hash(isSubmitting));

  @JsonKey(ignore: true)
  @override
  _$InternetStateCopyWith<_InternetState> get copyWith =>
      __$InternetStateCopyWithImpl<_InternetState>(this, _$identity);
}

abstract class _InternetState implements InternetState {
  const factory _InternetState(
      {required bool isConnected,
      required bool isSubmitting}) = _$_InternetState;

  @override
  bool get isConnected;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$InternetStateCopyWith<_InternetState> get copyWith =>
      throw _privateConstructorUsedError;
}
