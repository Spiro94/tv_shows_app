// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_series_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeSeriesStateTearOff {
  const _$HomeSeriesStateTearOff();

  _Initial initial({required List<TvShow> tvShows}) {
    return _Initial(
      tvShows: tvShows,
    );
  }

  _Loading loading({required List<TvShow> tvShows}) {
    return _Loading(
      tvShows: tvShows,
    );
  }

  _Data data({required List<TvShow> tvShows, required bool hasMore}) {
    return _Data(
      tvShows: tvShows,
      hasMore: hasMore,
    );
  }

  _Error error(
      {required CommonFailure failure, required List<TvShow> tvShows}) {
    return _Error(
      failure: failure,
      tvShows: tvShows,
    );
  }
}

/// @nodoc
const $HomeSeriesState = _$HomeSeriesStateTearOff();

/// @nodoc
mixin _$HomeSeriesState {
  List<TvShow> get tvShows => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TvShow> tvShows) initial,
    required TResult Function(List<TvShow> tvShows) loading,
    required TResult Function(List<TvShow> tvShows, bool hasMore) data,
    required TResult Function(CommonFailure failure, List<TvShow> tvShows)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TvShow> tvShows)? initial,
    TResult Function(List<TvShow> tvShows)? loading,
    TResult Function(List<TvShow> tvShows, bool hasMore)? data,
    TResult Function(CommonFailure failure, List<TvShow> tvShows)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TvShow> tvShows)? initial,
    TResult Function(List<TvShow> tvShows)? loading,
    TResult Function(List<TvShow> tvShows, bool hasMore)? data,
    TResult Function(CommonFailure failure, List<TvShow> tvShows)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeSeriesStateCopyWith<HomeSeriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSeriesStateCopyWith<$Res> {
  factory $HomeSeriesStateCopyWith(
          HomeSeriesState value, $Res Function(HomeSeriesState) then) =
      _$HomeSeriesStateCopyWithImpl<$Res>;
  $Res call({List<TvShow> tvShows});
}

/// @nodoc
class _$HomeSeriesStateCopyWithImpl<$Res>
    implements $HomeSeriesStateCopyWith<$Res> {
  _$HomeSeriesStateCopyWithImpl(this._value, this._then);

  final HomeSeriesState _value;
  // ignore: unused_field
  final $Res Function(HomeSeriesState) _then;

  @override
  $Res call({
    Object? tvShows = freezed,
  }) {
    return _then(_value.copyWith(
      tvShows: tvShows == freezed
          ? _value.tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShow>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $HomeSeriesStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<TvShow> tvShows});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeSeriesStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? tvShows = freezed,
  }) {
    return _then(_Initial(
      tvShows: tvShows == freezed
          ? _value.tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShow>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({required this.tvShows}) : super._();

  @override
  final List<TvShow> tvShows;

  @override
  String toString() {
    return 'HomeSeriesState.initial(tvShows: $tvShows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.tvShows, tvShows));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tvShows));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TvShow> tvShows) initial,
    required TResult Function(List<TvShow> tvShows) loading,
    required TResult Function(List<TvShow> tvShows, bool hasMore) data,
    required TResult Function(CommonFailure failure, List<TvShow> tvShows)
        error,
  }) {
    return initial(tvShows);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TvShow> tvShows)? initial,
    TResult Function(List<TvShow> tvShows)? loading,
    TResult Function(List<TvShow> tvShows, bool hasMore)? data,
    TResult Function(CommonFailure failure, List<TvShow> tvShows)? error,
  }) {
    return initial?.call(tvShows);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TvShow> tvShows)? initial,
    TResult Function(List<TvShow> tvShows)? loading,
    TResult Function(List<TvShow> tvShows, bool hasMore)? data,
    TResult Function(CommonFailure failure, List<TvShow> tvShows)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(tvShows);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends HomeSeriesState {
  const factory _Initial({required List<TvShow> tvShows}) = _$_Initial;
  const _Initial._() : super._();

  @override
  List<TvShow> get tvShows;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res>
    implements $HomeSeriesStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<TvShow> tvShows});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$HomeSeriesStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? tvShows = freezed,
  }) {
    return _then(_Loading(
      tvShows: tvShows == freezed
          ? _value.tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShow>,
    ));
  }
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading({required this.tvShows}) : super._();

  @override
  final List<TvShow> tvShows;

  @override
  String toString() {
    return 'HomeSeriesState.loading(tvShows: $tvShows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loading &&
            const DeepCollectionEquality().equals(other.tvShows, tvShows));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tvShows));

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TvShow> tvShows) initial,
    required TResult Function(List<TvShow> tvShows) loading,
    required TResult Function(List<TvShow> tvShows, bool hasMore) data,
    required TResult Function(CommonFailure failure, List<TvShow> tvShows)
        error,
  }) {
    return loading(tvShows);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TvShow> tvShows)? initial,
    TResult Function(List<TvShow> tvShows)? loading,
    TResult Function(List<TvShow> tvShows, bool hasMore)? data,
    TResult Function(CommonFailure failure, List<TvShow> tvShows)? error,
  }) {
    return loading?.call(tvShows);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TvShow> tvShows)? initial,
    TResult Function(List<TvShow> tvShows)? loading,
    TResult Function(List<TvShow> tvShows, bool hasMore)? data,
    TResult Function(CommonFailure failure, List<TvShow> tvShows)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(tvShows);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends HomeSeriesState {
  const factory _Loading({required List<TvShow> tvShows}) = _$_Loading;
  const _Loading._() : super._();

  @override
  List<TvShow> get tvShows;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $HomeSeriesStateCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<TvShow> tvShows, bool hasMore});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$HomeSeriesStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? tvShows = freezed,
    Object? hasMore = freezed,
  }) {
    return _then(_Data(
      tvShows: tvShows == freezed
          ? _value.tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShow>,
      hasMore: hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Data extends _Data {
  const _$_Data({required this.tvShows, required this.hasMore}) : super._();

  @override
  final List<TvShow> tvShows;
  @override
  final bool hasMore;

  @override
  String toString() {
    return 'HomeSeriesState.data(tvShows: $tvShows, hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality().equals(other.tvShows, tvShows) &&
            const DeepCollectionEquality().equals(other.hasMore, hasMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tvShows),
      const DeepCollectionEquality().hash(hasMore));

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TvShow> tvShows) initial,
    required TResult Function(List<TvShow> tvShows) loading,
    required TResult Function(List<TvShow> tvShows, bool hasMore) data,
    required TResult Function(CommonFailure failure, List<TvShow> tvShows)
        error,
  }) {
    return data(tvShows, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TvShow> tvShows)? initial,
    TResult Function(List<TvShow> tvShows)? loading,
    TResult Function(List<TvShow> tvShows, bool hasMore)? data,
    TResult Function(CommonFailure failure, List<TvShow> tvShows)? error,
  }) {
    return data?.call(tvShows, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TvShow> tvShows)? initial,
    TResult Function(List<TvShow> tvShows)? loading,
    TResult Function(List<TvShow> tvShows, bool hasMore)? data,
    TResult Function(CommonFailure failure, List<TvShow> tvShows)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(tvShows, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data extends HomeSeriesState {
  const factory _Data({required List<TvShow> tvShows, required bool hasMore}) =
      _$_Data;
  const _Data._() : super._();

  @override
  List<TvShow> get tvShows;
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> implements $HomeSeriesStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({CommonFailure failure, List<TvShow> tvShows});

  $CommonFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$HomeSeriesStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? failure = freezed,
    Object? tvShows = freezed,
  }) {
    return _then(_Error(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CommonFailure,
      tvShows: tvShows == freezed
          ? _value.tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShow>,
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
  const _$_Error({required this.failure, required this.tvShows}) : super._();

  @override
  final CommonFailure failure;
  @override
  final List<TvShow> tvShows;

  @override
  String toString() {
    return 'HomeSeriesState.error(failure: $failure, tvShows: $tvShows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.tvShows, tvShows));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(tvShows));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TvShow> tvShows) initial,
    required TResult Function(List<TvShow> tvShows) loading,
    required TResult Function(List<TvShow> tvShows, bool hasMore) data,
    required TResult Function(CommonFailure failure, List<TvShow> tvShows)
        error,
  }) {
    return error(failure, tvShows);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<TvShow> tvShows)? initial,
    TResult Function(List<TvShow> tvShows)? loading,
    TResult Function(List<TvShow> tvShows, bool hasMore)? data,
    TResult Function(CommonFailure failure, List<TvShow> tvShows)? error,
  }) {
    return error?.call(failure, tvShows);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TvShow> tvShows)? initial,
    TResult Function(List<TvShow> tvShows)? loading,
    TResult Function(List<TvShow> tvShows, bool hasMore)? data,
    TResult Function(CommonFailure failure, List<TvShow> tvShows)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure, tvShows);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends HomeSeriesState {
  const factory _Error(
      {required CommonFailure failure,
      required List<TvShow> tvShows}) = _$_Error;
  const _Error._() : super._();

  CommonFailure get failure;
  @override
  List<TvShow> get tvShows;
  @override
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
