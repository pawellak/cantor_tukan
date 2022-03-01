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
class _$NoInternetEventTearOff {
  const _$NoInternetEventTearOff();

  _CheckConnection checkConnection() {
    return const _CheckConnection();
  }
}

/// @nodoc
const $NoInternetEvent = _$NoInternetEventTearOff();

/// @nodoc
mixin _$NoInternetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConnection value) checkConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoInternetEventCopyWith<$Res> {
  factory $NoInternetEventCopyWith(
          NoInternetEvent value, $Res Function(NoInternetEvent) then) =
      _$NoInternetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoInternetEventCopyWithImpl<$Res>
    implements $NoInternetEventCopyWith<$Res> {
  _$NoInternetEventCopyWithImpl(this._value, this._then);

  final NoInternetEvent _value;
  // ignore: unused_field
  final $Res Function(NoInternetEvent) _then;
}

/// @nodoc
abstract class _$CheckConnectionCopyWith<$Res> {
  factory _$CheckConnectionCopyWith(
          _CheckConnection value, $Res Function(_CheckConnection) then) =
      __$CheckConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckConnectionCopyWithImpl<$Res>
    extends _$NoInternetEventCopyWithImpl<$Res>
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
    return 'NoInternetEvent.checkConnection()';
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
  }) {
    return checkConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConnection,
  }) {
    return checkConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnection,
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
  }) {
    return checkConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
  }) {
    return checkConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConnection value)? checkConnection,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection(this);
    }
    return orElse();
  }
}

abstract class _CheckConnection implements NoInternetEvent {
  const factory _CheckConnection() = _$_CheckConnection;
}

/// @nodoc
class _$NoInternetStateTearOff {
  const _$NoInternetStateTearOff();

  _NoInternetState call({required bool isConnected}) {
    return _NoInternetState(
      isConnected: isConnected,
    );
  }
}

/// @nodoc
const $NoInternetState = _$NoInternetStateTearOff();

/// @nodoc
mixin _$NoInternetState {
  bool get isConnected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoInternetStateCopyWith<NoInternetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoInternetStateCopyWith<$Res> {
  factory $NoInternetStateCopyWith(
          NoInternetState value, $Res Function(NoInternetState) then) =
      _$NoInternetStateCopyWithImpl<$Res>;
  $Res call({bool isConnected});
}

/// @nodoc
class _$NoInternetStateCopyWithImpl<$Res>
    implements $NoInternetStateCopyWith<$Res> {
  _$NoInternetStateCopyWithImpl(this._value, this._then);

  final NoInternetState _value;
  // ignore: unused_field
  final $Res Function(NoInternetState) _then;

  @override
  $Res call({
    Object? isConnected = freezed,
  }) {
    return _then(_value.copyWith(
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NoInternetStateCopyWith<$Res>
    implements $NoInternetStateCopyWith<$Res> {
  factory _$NoInternetStateCopyWith(
          _NoInternetState value, $Res Function(_NoInternetState) then) =
      __$NoInternetStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isConnected});
}

/// @nodoc
class __$NoInternetStateCopyWithImpl<$Res>
    extends _$NoInternetStateCopyWithImpl<$Res>
    implements _$NoInternetStateCopyWith<$Res> {
  __$NoInternetStateCopyWithImpl(
      _NoInternetState _value, $Res Function(_NoInternetState) _then)
      : super(_value, (v) => _then(v as _NoInternetState));

  @override
  _NoInternetState get _value => super._value as _NoInternetState;

  @override
  $Res call({
    Object? isConnected = freezed,
  }) {
    return _then(_NoInternetState(
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NoInternetState implements _NoInternetState {
  const _$_NoInternetState({required this.isConnected});

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'NoInternetState(isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoInternetState &&
            const DeepCollectionEquality()
                .equals(other.isConnected, isConnected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isConnected));

  @JsonKey(ignore: true)
  @override
  _$NoInternetStateCopyWith<_NoInternetState> get copyWith =>
      __$NoInternetStateCopyWithImpl<_NoInternetState>(this, _$identity);
}

abstract class _NoInternetState implements NoInternetState {
  const factory _NoInternetState({required bool isConnected}) =
      _$_NoInternetState;

  @override
  bool get isConnected;
  @override
  @JsonKey(ignore: true)
  _$NoInternetStateCopyWith<_NoInternetState> get copyWith =>
      throw _privateConstructorUsedError;
}
