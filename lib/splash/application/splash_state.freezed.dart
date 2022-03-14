// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SplashStateTearOff {
  const _$SplashStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _PinSet pinSet() {
    return const _PinSet();
  }

  _PinUnSet pinUnset() {
    return const _PinUnSet();
  }

  _Error error({required CommonFailure failure}) {
    return _Error(
      failure: failure,
    );
  }
}

/// @nodoc
const $SplashState = _$SplashStateTearOff();

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pinSet,
    required TResult Function() pinUnset,
    required TResult Function(CommonFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pinSet,
    TResult Function()? pinUnset,
    TResult Function(CommonFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pinSet,
    TResult Function()? pinUnset,
    TResult Function(CommonFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PinSet value) pinSet,
    required TResult Function(_PinUnSet value) pinUnset,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PinSet value)? pinSet,
    TResult Function(_PinUnSet value)? pinUnset,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PinSet value)? pinSet,
    TResult Function(_PinUnSet value)? pinUnset,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'SplashState.initial()';
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
    required TResult Function() pinSet,
    required TResult Function() pinUnset,
    required TResult Function(CommonFailure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pinSet,
    TResult Function()? pinUnset,
    TResult Function(CommonFailure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pinSet,
    TResult Function()? pinUnset,
    TResult Function(CommonFailure failure)? error,
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
    required TResult Function(_PinSet value) pinSet,
    required TResult Function(_PinUnSet value) pinUnset,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PinSet value)? pinSet,
    TResult Function(_PinUnSet value)? pinUnset,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PinSet value)? pinSet,
    TResult Function(_PinUnSet value)? pinUnset,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SplashState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$PinSetCopyWith<$Res> {
  factory _$PinSetCopyWith(_PinSet value, $Res Function(_PinSet) then) =
      __$PinSetCopyWithImpl<$Res>;
}

/// @nodoc
class __$PinSetCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$PinSetCopyWith<$Res> {
  __$PinSetCopyWithImpl(_PinSet _value, $Res Function(_PinSet) _then)
      : super(_value, (v) => _then(v as _PinSet));

  @override
  _PinSet get _value => super._value as _PinSet;
}

/// @nodoc

class _$_PinSet extends _PinSet {
  const _$_PinSet() : super._();

  @override
  String toString() {
    return 'SplashState.pinSet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PinSet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pinSet,
    required TResult Function() pinUnset,
    required TResult Function(CommonFailure failure) error,
  }) {
    return pinSet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pinSet,
    TResult Function()? pinUnset,
    TResult Function(CommonFailure failure)? error,
  }) {
    return pinSet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pinSet,
    TResult Function()? pinUnset,
    TResult Function(CommonFailure failure)? error,
    required TResult orElse(),
  }) {
    if (pinSet != null) {
      return pinSet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PinSet value) pinSet,
    required TResult Function(_PinUnSet value) pinUnset,
    required TResult Function(_Error value) error,
  }) {
    return pinSet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PinSet value)? pinSet,
    TResult Function(_PinUnSet value)? pinUnset,
    TResult Function(_Error value)? error,
  }) {
    return pinSet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PinSet value)? pinSet,
    TResult Function(_PinUnSet value)? pinUnset,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (pinSet != null) {
      return pinSet(this);
    }
    return orElse();
  }
}

abstract class _PinSet extends SplashState {
  const factory _PinSet() = _$_PinSet;
  const _PinSet._() : super._();
}

/// @nodoc
abstract class _$PinUnSetCopyWith<$Res> {
  factory _$PinUnSetCopyWith(_PinUnSet value, $Res Function(_PinUnSet) then) =
      __$PinUnSetCopyWithImpl<$Res>;
}

/// @nodoc
class __$PinUnSetCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$PinUnSetCopyWith<$Res> {
  __$PinUnSetCopyWithImpl(_PinUnSet _value, $Res Function(_PinUnSet) _then)
      : super(_value, (v) => _then(v as _PinUnSet));

  @override
  _PinUnSet get _value => super._value as _PinUnSet;
}

/// @nodoc

class _$_PinUnSet extends _PinUnSet {
  const _$_PinUnSet() : super._();

  @override
  String toString() {
    return 'SplashState.pinUnset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PinUnSet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pinSet,
    required TResult Function() pinUnset,
    required TResult Function(CommonFailure failure) error,
  }) {
    return pinUnset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pinSet,
    TResult Function()? pinUnset,
    TResult Function(CommonFailure failure)? error,
  }) {
    return pinUnset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pinSet,
    TResult Function()? pinUnset,
    TResult Function(CommonFailure failure)? error,
    required TResult orElse(),
  }) {
    if (pinUnset != null) {
      return pinUnset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PinSet value) pinSet,
    required TResult Function(_PinUnSet value) pinUnset,
    required TResult Function(_Error value) error,
  }) {
    return pinUnset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PinSet value)? pinSet,
    TResult Function(_PinUnSet value)? pinUnset,
    TResult Function(_Error value)? error,
  }) {
    return pinUnset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PinSet value)? pinSet,
    TResult Function(_PinUnSet value)? pinUnset,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (pinUnset != null) {
      return pinUnset(this);
    }
    return orElse();
  }
}

abstract class _PinUnSet extends SplashState {
  const factory _PinUnSet() = _$_PinUnSet;
  const _PinUnSet._() : super._();
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({CommonFailure failure});

  $CommonFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Error(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CommonFailure,
    ));
  }

  @override
  $CommonFailureCopyWith<$Res> get failure {
    return $CommonFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error({required this.failure}) : super._();

  @override
  final CommonFailure failure;

  @override
  String toString() {
    return 'SplashState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pinSet,
    required TResult Function() pinUnset,
    required TResult Function(CommonFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pinSet,
    TResult Function()? pinUnset,
    TResult Function(CommonFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pinSet,
    TResult Function()? pinUnset,
    TResult Function(CommonFailure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PinSet value) pinSet,
    required TResult Function(_PinUnSet value) pinUnset,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PinSet value)? pinSet,
    TResult Function(_PinUnSet value)? pinUnset,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PinSet value)? pinSet,
    TResult Function(_PinUnSet value)? pinUnset,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends SplashState {
  const factory _Error({required CommonFailure failure}) = _$_Error;
  const _Error._() : super._();

  CommonFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
