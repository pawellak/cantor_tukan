// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionWatcherEventTearOff {
  const _$TransactionWatcherEventTearOff();

  _WatchAllTransaction watchAllTransaction() {
    return const _WatchAllTransaction();
  }

  _WatchAcceptedTransaction watchAcceptedTransaction() {
    return const _WatchAcceptedTransaction();
  }

  _WatchDeclineTransaction watchDeclineTransaction() {
    return const _WatchDeclineTransaction();
  }

  _WatchPendingTransaction watchPendingTransaction() {
    return const _WatchPendingTransaction();
  }

  _TransactionReceived transactionReceived(
      Either<TransactionFailure, KtList<Transaction>> failureOrTransaction) {
    return _TransactionReceived(
      failureOrTransaction,
    );
  }
}

/// @nodoc
const $TransactionWatcherEvent = _$TransactionWatcherEventTearOff();

/// @nodoc
mixin _$TransactionWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllTransaction,
    required TResult Function() watchAcceptedTransaction,
    required TResult Function() watchDeclineTransaction,
    required TResult Function() watchPendingTransaction,
    required TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)
        transactionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllTransaction,
    TResult Function()? watchAcceptedTransaction,
    TResult Function()? watchDeclineTransaction,
    TResult Function()? watchPendingTransaction,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)?
        transactionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllTransaction,
    TResult Function()? watchAcceptedTransaction,
    TResult Function()? watchDeclineTransaction,
    TResult Function()? watchPendingTransaction,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)?
        transactionReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllTransaction value) watchAllTransaction,
    required TResult Function(_WatchAcceptedTransaction value)
        watchAcceptedTransaction,
    required TResult Function(_WatchDeclineTransaction value)
        watchDeclineTransaction,
    required TResult Function(_WatchPendingTransaction value)
        watchPendingTransaction,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllTransaction value)? watchAllTransaction,
    TResult Function(_WatchAcceptedTransaction value)? watchAcceptedTransaction,
    TResult Function(_WatchDeclineTransaction value)? watchDeclineTransaction,
    TResult Function(_WatchPendingTransaction value)? watchPendingTransaction,
    TResult Function(_TransactionReceived value)? transactionReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllTransaction value)? watchAllTransaction,
    TResult Function(_WatchAcceptedTransaction value)? watchAcceptedTransaction,
    TResult Function(_WatchDeclineTransaction value)? watchDeclineTransaction,
    TResult Function(_WatchPendingTransaction value)? watchPendingTransaction,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionWatcherEventCopyWith<$Res> {
  factory $TransactionWatcherEventCopyWith(TransactionWatcherEvent value,
          $Res Function(TransactionWatcherEvent) then) =
      _$TransactionWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionWatcherEventCopyWithImpl<$Res>
    implements $TransactionWatcherEventCopyWith<$Res> {
  _$TransactionWatcherEventCopyWithImpl(this._value, this._then);

  final TransactionWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllTransactionCopyWith<$Res> {
  factory _$WatchAllTransactionCopyWith(_WatchAllTransaction value,
          $Res Function(_WatchAllTransaction) then) =
      __$WatchAllTransactionCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllTransactionCopyWithImpl<$Res>
    extends _$TransactionWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllTransactionCopyWith<$Res> {
  __$WatchAllTransactionCopyWithImpl(
      _WatchAllTransaction _value, $Res Function(_WatchAllTransaction) _then)
      : super(_value, (v) => _then(v as _WatchAllTransaction));

  @override
  _WatchAllTransaction get _value => super._value as _WatchAllTransaction;
}

/// @nodoc

class _$_WatchAllTransaction implements _WatchAllTransaction {
  const _$_WatchAllTransaction();

  @override
  String toString() {
    return 'TransactionWatcherEvent.watchAllTransaction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchAllTransaction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllTransaction,
    required TResult Function() watchAcceptedTransaction,
    required TResult Function() watchDeclineTransaction,
    required TResult Function() watchPendingTransaction,
    required TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)
        transactionReceived,
  }) {
    return watchAllTransaction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllTransaction,
    TResult Function()? watchAcceptedTransaction,
    TResult Function()? watchDeclineTransaction,
    TResult Function()? watchPendingTransaction,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)?
        transactionReceived,
  }) {
    return watchAllTransaction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllTransaction,
    TResult Function()? watchAcceptedTransaction,
    TResult Function()? watchDeclineTransaction,
    TResult Function()? watchPendingTransaction,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)?
        transactionReceived,
    required TResult orElse(),
  }) {
    if (watchAllTransaction != null) {
      return watchAllTransaction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllTransaction value) watchAllTransaction,
    required TResult Function(_WatchAcceptedTransaction value)
        watchAcceptedTransaction,
    required TResult Function(_WatchDeclineTransaction value)
        watchDeclineTransaction,
    required TResult Function(_WatchPendingTransaction value)
        watchPendingTransaction,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) {
    return watchAllTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllTransaction value)? watchAllTransaction,
    TResult Function(_WatchAcceptedTransaction value)? watchAcceptedTransaction,
    TResult Function(_WatchDeclineTransaction value)? watchDeclineTransaction,
    TResult Function(_WatchPendingTransaction value)? watchPendingTransaction,
    TResult Function(_TransactionReceived value)? transactionReceived,
  }) {
    return watchAllTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllTransaction value)? watchAllTransaction,
    TResult Function(_WatchAcceptedTransaction value)? watchAcceptedTransaction,
    TResult Function(_WatchDeclineTransaction value)? watchDeclineTransaction,
    TResult Function(_WatchPendingTransaction value)? watchPendingTransaction,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) {
    if (watchAllTransaction != null) {
      return watchAllTransaction(this);
    }
    return orElse();
  }
}

abstract class _WatchAllTransaction implements TransactionWatcherEvent {
  const factory _WatchAllTransaction() = _$_WatchAllTransaction;
}

/// @nodoc
abstract class _$WatchAcceptedTransactionCopyWith<$Res> {
  factory _$WatchAcceptedTransactionCopyWith(_WatchAcceptedTransaction value,
          $Res Function(_WatchAcceptedTransaction) then) =
      __$WatchAcceptedTransactionCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAcceptedTransactionCopyWithImpl<$Res>
    extends _$TransactionWatcherEventCopyWithImpl<$Res>
    implements _$WatchAcceptedTransactionCopyWith<$Res> {
  __$WatchAcceptedTransactionCopyWithImpl(_WatchAcceptedTransaction _value,
      $Res Function(_WatchAcceptedTransaction) _then)
      : super(_value, (v) => _then(v as _WatchAcceptedTransaction));

  @override
  _WatchAcceptedTransaction get _value =>
      super._value as _WatchAcceptedTransaction;
}

/// @nodoc

class _$_WatchAcceptedTransaction implements _WatchAcceptedTransaction {
  const _$_WatchAcceptedTransaction();

  @override
  String toString() {
    return 'TransactionWatcherEvent.watchAcceptedTransaction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchAcceptedTransaction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllTransaction,
    required TResult Function() watchAcceptedTransaction,
    required TResult Function() watchDeclineTransaction,
    required TResult Function() watchPendingTransaction,
    required TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)
        transactionReceived,
  }) {
    return watchAcceptedTransaction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllTransaction,
    TResult Function()? watchAcceptedTransaction,
    TResult Function()? watchDeclineTransaction,
    TResult Function()? watchPendingTransaction,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)?
        transactionReceived,
  }) {
    return watchAcceptedTransaction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllTransaction,
    TResult Function()? watchAcceptedTransaction,
    TResult Function()? watchDeclineTransaction,
    TResult Function()? watchPendingTransaction,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)?
        transactionReceived,
    required TResult orElse(),
  }) {
    if (watchAcceptedTransaction != null) {
      return watchAcceptedTransaction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllTransaction value) watchAllTransaction,
    required TResult Function(_WatchAcceptedTransaction value)
        watchAcceptedTransaction,
    required TResult Function(_WatchDeclineTransaction value)
        watchDeclineTransaction,
    required TResult Function(_WatchPendingTransaction value)
        watchPendingTransaction,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) {
    return watchAcceptedTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllTransaction value)? watchAllTransaction,
    TResult Function(_WatchAcceptedTransaction value)? watchAcceptedTransaction,
    TResult Function(_WatchDeclineTransaction value)? watchDeclineTransaction,
    TResult Function(_WatchPendingTransaction value)? watchPendingTransaction,
    TResult Function(_TransactionReceived value)? transactionReceived,
  }) {
    return watchAcceptedTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllTransaction value)? watchAllTransaction,
    TResult Function(_WatchAcceptedTransaction value)? watchAcceptedTransaction,
    TResult Function(_WatchDeclineTransaction value)? watchDeclineTransaction,
    TResult Function(_WatchPendingTransaction value)? watchPendingTransaction,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) {
    if (watchAcceptedTransaction != null) {
      return watchAcceptedTransaction(this);
    }
    return orElse();
  }
}

abstract class _WatchAcceptedTransaction implements TransactionWatcherEvent {
  const factory _WatchAcceptedTransaction() = _$_WatchAcceptedTransaction;
}

/// @nodoc
abstract class _$WatchDeclineTransactionCopyWith<$Res> {
  factory _$WatchDeclineTransactionCopyWith(_WatchDeclineTransaction value,
          $Res Function(_WatchDeclineTransaction) then) =
      __$WatchDeclineTransactionCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchDeclineTransactionCopyWithImpl<$Res>
    extends _$TransactionWatcherEventCopyWithImpl<$Res>
    implements _$WatchDeclineTransactionCopyWith<$Res> {
  __$WatchDeclineTransactionCopyWithImpl(_WatchDeclineTransaction _value,
      $Res Function(_WatchDeclineTransaction) _then)
      : super(_value, (v) => _then(v as _WatchDeclineTransaction));

  @override
  _WatchDeclineTransaction get _value =>
      super._value as _WatchDeclineTransaction;
}

/// @nodoc

class _$_WatchDeclineTransaction implements _WatchDeclineTransaction {
  const _$_WatchDeclineTransaction();

  @override
  String toString() {
    return 'TransactionWatcherEvent.watchDeclineTransaction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchDeclineTransaction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllTransaction,
    required TResult Function() watchAcceptedTransaction,
    required TResult Function() watchDeclineTransaction,
    required TResult Function() watchPendingTransaction,
    required TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)
        transactionReceived,
  }) {
    return watchDeclineTransaction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllTransaction,
    TResult Function()? watchAcceptedTransaction,
    TResult Function()? watchDeclineTransaction,
    TResult Function()? watchPendingTransaction,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)?
        transactionReceived,
  }) {
    return watchDeclineTransaction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllTransaction,
    TResult Function()? watchAcceptedTransaction,
    TResult Function()? watchDeclineTransaction,
    TResult Function()? watchPendingTransaction,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)?
        transactionReceived,
    required TResult orElse(),
  }) {
    if (watchDeclineTransaction != null) {
      return watchDeclineTransaction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllTransaction value) watchAllTransaction,
    required TResult Function(_WatchAcceptedTransaction value)
        watchAcceptedTransaction,
    required TResult Function(_WatchDeclineTransaction value)
        watchDeclineTransaction,
    required TResult Function(_WatchPendingTransaction value)
        watchPendingTransaction,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) {
    return watchDeclineTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllTransaction value)? watchAllTransaction,
    TResult Function(_WatchAcceptedTransaction value)? watchAcceptedTransaction,
    TResult Function(_WatchDeclineTransaction value)? watchDeclineTransaction,
    TResult Function(_WatchPendingTransaction value)? watchPendingTransaction,
    TResult Function(_TransactionReceived value)? transactionReceived,
  }) {
    return watchDeclineTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllTransaction value)? watchAllTransaction,
    TResult Function(_WatchAcceptedTransaction value)? watchAcceptedTransaction,
    TResult Function(_WatchDeclineTransaction value)? watchDeclineTransaction,
    TResult Function(_WatchPendingTransaction value)? watchPendingTransaction,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) {
    if (watchDeclineTransaction != null) {
      return watchDeclineTransaction(this);
    }
    return orElse();
  }
}

abstract class _WatchDeclineTransaction implements TransactionWatcherEvent {
  const factory _WatchDeclineTransaction() = _$_WatchDeclineTransaction;
}

/// @nodoc
abstract class _$WatchPendingTransactionCopyWith<$Res> {
  factory _$WatchPendingTransactionCopyWith(_WatchPendingTransaction value,
          $Res Function(_WatchPendingTransaction) then) =
      __$WatchPendingTransactionCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchPendingTransactionCopyWithImpl<$Res>
    extends _$TransactionWatcherEventCopyWithImpl<$Res>
    implements _$WatchPendingTransactionCopyWith<$Res> {
  __$WatchPendingTransactionCopyWithImpl(_WatchPendingTransaction _value,
      $Res Function(_WatchPendingTransaction) _then)
      : super(_value, (v) => _then(v as _WatchPendingTransaction));

  @override
  _WatchPendingTransaction get _value =>
      super._value as _WatchPendingTransaction;
}

/// @nodoc

class _$_WatchPendingTransaction implements _WatchPendingTransaction {
  const _$_WatchPendingTransaction();

  @override
  String toString() {
    return 'TransactionWatcherEvent.watchPendingTransaction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchPendingTransaction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllTransaction,
    required TResult Function() watchAcceptedTransaction,
    required TResult Function() watchDeclineTransaction,
    required TResult Function() watchPendingTransaction,
    required TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)
        transactionReceived,
  }) {
    return watchPendingTransaction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllTransaction,
    TResult Function()? watchAcceptedTransaction,
    TResult Function()? watchDeclineTransaction,
    TResult Function()? watchPendingTransaction,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)?
        transactionReceived,
  }) {
    return watchPendingTransaction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllTransaction,
    TResult Function()? watchAcceptedTransaction,
    TResult Function()? watchDeclineTransaction,
    TResult Function()? watchPendingTransaction,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)?
        transactionReceived,
    required TResult orElse(),
  }) {
    if (watchPendingTransaction != null) {
      return watchPendingTransaction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllTransaction value) watchAllTransaction,
    required TResult Function(_WatchAcceptedTransaction value)
        watchAcceptedTransaction,
    required TResult Function(_WatchDeclineTransaction value)
        watchDeclineTransaction,
    required TResult Function(_WatchPendingTransaction value)
        watchPendingTransaction,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) {
    return watchPendingTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllTransaction value)? watchAllTransaction,
    TResult Function(_WatchAcceptedTransaction value)? watchAcceptedTransaction,
    TResult Function(_WatchDeclineTransaction value)? watchDeclineTransaction,
    TResult Function(_WatchPendingTransaction value)? watchPendingTransaction,
    TResult Function(_TransactionReceived value)? transactionReceived,
  }) {
    return watchPendingTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllTransaction value)? watchAllTransaction,
    TResult Function(_WatchAcceptedTransaction value)? watchAcceptedTransaction,
    TResult Function(_WatchDeclineTransaction value)? watchDeclineTransaction,
    TResult Function(_WatchPendingTransaction value)? watchPendingTransaction,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) {
    if (watchPendingTransaction != null) {
      return watchPendingTransaction(this);
    }
    return orElse();
  }
}

abstract class _WatchPendingTransaction implements TransactionWatcherEvent {
  const factory _WatchPendingTransaction() = _$_WatchPendingTransaction;
}

/// @nodoc
abstract class _$TransactionReceivedCopyWith<$Res> {
  factory _$TransactionReceivedCopyWith(_TransactionReceived value,
          $Res Function(_TransactionReceived) then) =
      __$TransactionReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<TransactionFailure, KtList<Transaction>> failureOrTransaction});
}

/// @nodoc
class __$TransactionReceivedCopyWithImpl<$Res>
    extends _$TransactionWatcherEventCopyWithImpl<$Res>
    implements _$TransactionReceivedCopyWith<$Res> {
  __$TransactionReceivedCopyWithImpl(
      _TransactionReceived _value, $Res Function(_TransactionReceived) _then)
      : super(_value, (v) => _then(v as _TransactionReceived));

  @override
  _TransactionReceived get _value => super._value as _TransactionReceived;

  @override
  $Res call({
    Object? failureOrTransaction = freezed,
  }) {
    return _then(_TransactionReceived(
      failureOrTransaction == freezed
          ? _value.failureOrTransaction
          : failureOrTransaction // ignore: cast_nullable_to_non_nullable
              as Either<TransactionFailure, KtList<Transaction>>,
    ));
  }
}

/// @nodoc

class _$_TransactionReceived implements _TransactionReceived {
  const _$_TransactionReceived(this.failureOrTransaction);

  @override
  final Either<TransactionFailure, KtList<Transaction>> failureOrTransaction;

  @override
  String toString() {
    return 'TransactionWatcherEvent.transactionReceived(failureOrTransaction: $failureOrTransaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrTransaction, failureOrTransaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrTransaction));

  @JsonKey(ignore: true)
  @override
  _$TransactionReceivedCopyWith<_TransactionReceived> get copyWith =>
      __$TransactionReceivedCopyWithImpl<_TransactionReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllTransaction,
    required TResult Function() watchAcceptedTransaction,
    required TResult Function() watchDeclineTransaction,
    required TResult Function() watchPendingTransaction,
    required TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)
        transactionReceived,
  }) {
    return transactionReceived(failureOrTransaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllTransaction,
    TResult Function()? watchAcceptedTransaction,
    TResult Function()? watchDeclineTransaction,
    TResult Function()? watchPendingTransaction,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)?
        transactionReceived,
  }) {
    return transactionReceived?.call(failureOrTransaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllTransaction,
    TResult Function()? watchAcceptedTransaction,
    TResult Function()? watchDeclineTransaction,
    TResult Function()? watchPendingTransaction,
    TResult Function(
            Either<TransactionFailure, KtList<Transaction>>
                failureOrTransaction)?
        transactionReceived,
    required TResult orElse(),
  }) {
    if (transactionReceived != null) {
      return transactionReceived(failureOrTransaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllTransaction value) watchAllTransaction,
    required TResult Function(_WatchAcceptedTransaction value)
        watchAcceptedTransaction,
    required TResult Function(_WatchDeclineTransaction value)
        watchDeclineTransaction,
    required TResult Function(_WatchPendingTransaction value)
        watchPendingTransaction,
    required TResult Function(_TransactionReceived value) transactionReceived,
  }) {
    return transactionReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllTransaction value)? watchAllTransaction,
    TResult Function(_WatchAcceptedTransaction value)? watchAcceptedTransaction,
    TResult Function(_WatchDeclineTransaction value)? watchDeclineTransaction,
    TResult Function(_WatchPendingTransaction value)? watchPendingTransaction,
    TResult Function(_TransactionReceived value)? transactionReceived,
  }) {
    return transactionReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllTransaction value)? watchAllTransaction,
    TResult Function(_WatchAcceptedTransaction value)? watchAcceptedTransaction,
    TResult Function(_WatchDeclineTransaction value)? watchDeclineTransaction,
    TResult Function(_WatchPendingTransaction value)? watchPendingTransaction,
    TResult Function(_TransactionReceived value)? transactionReceived,
    required TResult orElse(),
  }) {
    if (transactionReceived != null) {
      return transactionReceived(this);
    }
    return orElse();
  }
}

abstract class _TransactionReceived implements TransactionWatcherEvent {
  const factory _TransactionReceived(
      Either<TransactionFailure, KtList<Transaction>>
          failureOrTransaction) = _$_TransactionReceived;

  Either<TransactionFailure, KtList<Transaction>> get failureOrTransaction;
  @JsonKey(ignore: true)
  _$TransactionReceivedCopyWith<_TransactionReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TransactionWatcherStateTearOff {
  const _$TransactionWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Transaction> transaction) {
    return _LoadSuccess(
      transaction,
    );
  }

  _LoadFailurenitial loadFailure(TransactionFailure transactionFailure) {
    return _LoadFailurenitial(
      transactionFailure,
    );
  }
}

/// @nodoc
const $TransactionWatcherState = _$TransactionWatcherStateTearOff();

/// @nodoc
mixin _$TransactionWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Transaction> transaction) loadSuccess,
    required TResult Function(TransactionFailure transactionFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transaction)? loadSuccess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transaction)? loadSuccess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailurenitial value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailurenitial value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailurenitial value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionWatcherStateCopyWith<$Res> {
  factory $TransactionWatcherStateCopyWith(TransactionWatcherState value,
          $Res Function(TransactionWatcherState) then) =
      _$TransactionWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionWatcherStateCopyWithImpl<$Res>
    implements $TransactionWatcherStateCopyWith<$Res> {
  _$TransactionWatcherStateCopyWithImpl(this._value, this._then);

  final TransactionWatcherState _value;
  // ignore: unused_field
  final $Res Function(TransactionWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$TransactionWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TransactionWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Transaction> transaction) loadSuccess,
    required TResult Function(TransactionFailure transactionFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transaction)? loadSuccess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transaction)? loadSuccess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailurenitial value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailurenitial value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailurenitial value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TransactionWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$TransactionWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'TransactionWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Transaction> transaction) loadSuccess,
    required TResult Function(TransactionFailure transactionFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transaction)? loadSuccess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transaction)? loadSuccess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailurenitial value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailurenitial value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailurenitial value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements TransactionWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Transaction> transaction});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$TransactionWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? transaction = freezed,
  }) {
    return _then(_LoadSuccess(
      transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as KtList<Transaction>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.transaction);

  @override
  final KtList<Transaction> transaction;

  @override
  String toString() {
    return 'TransactionWatcherState.loadSuccess(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.transaction, transaction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transaction));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Transaction> transaction) loadSuccess,
    required TResult Function(TransactionFailure transactionFailure)
        loadFailure,
  }) {
    return loadSuccess(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transaction)? loadSuccess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
  }) {
    return loadSuccess?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transaction)? loadSuccess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailurenitial value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailurenitial value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailurenitial value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements TransactionWatcherState {
  const factory _LoadSuccess(KtList<Transaction> transaction) = _$_LoadSuccess;

  KtList<Transaction> get transaction;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailurenitialCopyWith<$Res> {
  factory _$LoadFailurenitialCopyWith(
          _LoadFailurenitial value, $Res Function(_LoadFailurenitial) then) =
      __$LoadFailurenitialCopyWithImpl<$Res>;
  $Res call({TransactionFailure transactionFailure});

  $TransactionFailureCopyWith<$Res> get transactionFailure;
}

/// @nodoc
class __$LoadFailurenitialCopyWithImpl<$Res>
    extends _$TransactionWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailurenitialCopyWith<$Res> {
  __$LoadFailurenitialCopyWithImpl(
      _LoadFailurenitial _value, $Res Function(_LoadFailurenitial) _then)
      : super(_value, (v) => _then(v as _LoadFailurenitial));

  @override
  _LoadFailurenitial get _value => super._value as _LoadFailurenitial;

  @override
  $Res call({
    Object? transactionFailure = freezed,
  }) {
    return _then(_LoadFailurenitial(
      transactionFailure == freezed
          ? _value.transactionFailure
          : transactionFailure // ignore: cast_nullable_to_non_nullable
              as TransactionFailure,
    ));
  }

  @override
  $TransactionFailureCopyWith<$Res> get transactionFailure {
    return $TransactionFailureCopyWith<$Res>(_value.transactionFailure,
        (value) {
      return _then(_value.copyWith(transactionFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailurenitial implements _LoadFailurenitial {
  const _$_LoadFailurenitial(this.transactionFailure);

  @override
  final TransactionFailure transactionFailure;

  @override
  String toString() {
    return 'TransactionWatcherState.loadFailure(transactionFailure: $transactionFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailurenitial &&
            const DeepCollectionEquality()
                .equals(other.transactionFailure, transactionFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactionFailure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailurenitialCopyWith<_LoadFailurenitial> get copyWith =>
      __$LoadFailurenitialCopyWithImpl<_LoadFailurenitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Transaction> transaction) loadSuccess,
    required TResult Function(TransactionFailure transactionFailure)
        loadFailure,
  }) {
    return loadFailure(transactionFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transaction)? loadSuccess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
  }) {
    return loadFailure?.call(transactionFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Transaction> transaction)? loadSuccess,
    TResult Function(TransactionFailure transactionFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(transactionFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailurenitial value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailurenitial value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailurenitial value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailurenitial implements TransactionWatcherState {
  const factory _LoadFailurenitial(TransactionFailure transactionFailure) =
      _$_LoadFailurenitial;

  TransactionFailure get transactionFailure;
  @JsonKey(ignore: true)
  _$LoadFailurenitialCopyWith<_LoadFailurenitial> get copyWith =>
      throw _privateConstructorUsedError;
}
