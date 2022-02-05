// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'custom_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomUserTearOff {
  const _$CustomUserTearOff();

  _CustomUser call({required UniqueId id}) {
    return _CustomUser(
      id: id,
    );
  }
}

/// @nodoc
const $CustomUser = _$CustomUserTearOff();

/// @nodoc
mixin _$CustomUser {
  UniqueId get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomUserCopyWith<CustomUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomUserCopyWith<$Res> {
  factory $CustomUserCopyWith(
          CustomUser value, $Res Function(CustomUser) then) =
      _$CustomUserCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

/// @nodoc
class _$CustomUserCopyWithImpl<$Res> implements $CustomUserCopyWith<$Res> {
  _$CustomUserCopyWithImpl(this._value, this._then);

  final CustomUser _value;
  // ignore: unused_field
  final $Res Function(CustomUser) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$CustomUserCopyWith<$Res> implements $CustomUserCopyWith<$Res> {
  factory _$CustomUserCopyWith(
          _CustomUser value, $Res Function(_CustomUser) then) =
      __$CustomUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id});
}

/// @nodoc
class __$CustomUserCopyWithImpl<$Res> extends _$CustomUserCopyWithImpl<$Res>
    implements _$CustomUserCopyWith<$Res> {
  __$CustomUserCopyWithImpl(
      _CustomUser _value, $Res Function(_CustomUser) _then)
      : super(_value, (v) => _then(v as _CustomUser));

  @override
  _CustomUser get _value => super._value as _CustomUser;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_CustomUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_CustomUser implements _CustomUser {
  const _$_CustomUser({required this.id});

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'CustomUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomUser &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$CustomUserCopyWith<_CustomUser> get copyWith =>
      __$CustomUserCopyWithImpl<_CustomUser>(this, _$identity);
}

abstract class _CustomUser implements CustomUser {
  const factory _CustomUser({required UniqueId id}) = _$_CustomUser;

  @override
  UniqueId get id;
  @override
  @JsonKey(ignore: true)
  _$CustomUserCopyWith<_CustomUser> get copyWith =>
      throw _privateConstructorUsedError;
}
