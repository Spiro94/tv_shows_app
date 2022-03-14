// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImageEntityTearOff {
  const _$ImageEntityTearOff();

  _ImageEntity call({required String medium, required String original}) {
    return _ImageEntity(
      medium: medium,
      original: original,
    );
  }
}

/// @nodoc
const $ImageEntity = _$ImageEntityTearOff();

/// @nodoc
mixin _$ImageEntity {
  String get medium => throw _privateConstructorUsedError;
  String get original => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageEntityCopyWith<ImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEntityCopyWith<$Res> {
  factory $ImageEntityCopyWith(
          ImageEntity value, $Res Function(ImageEntity) then) =
      _$ImageEntityCopyWithImpl<$Res>;
  $Res call({String medium, String original});
}

/// @nodoc
class _$ImageEntityCopyWithImpl<$Res> implements $ImageEntityCopyWith<$Res> {
  _$ImageEntityCopyWithImpl(this._value, this._then);

  final ImageEntity _value;
  // ignore: unused_field
  final $Res Function(ImageEntity) _then;

  @override
  $Res call({
    Object? medium = freezed,
    Object? original = freezed,
  }) {
    return _then(_value.copyWith(
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ImageEntityCopyWith<$Res>
    implements $ImageEntityCopyWith<$Res> {
  factory _$ImageEntityCopyWith(
          _ImageEntity value, $Res Function(_ImageEntity) then) =
      __$ImageEntityCopyWithImpl<$Res>;
  @override
  $Res call({String medium, String original});
}

/// @nodoc
class __$ImageEntityCopyWithImpl<$Res> extends _$ImageEntityCopyWithImpl<$Res>
    implements _$ImageEntityCopyWith<$Res> {
  __$ImageEntityCopyWithImpl(
      _ImageEntity _value, $Res Function(_ImageEntity) _then)
      : super(_value, (v) => _then(v as _ImageEntity));

  @override
  _ImageEntity get _value => super._value as _ImageEntity;

  @override
  $Res call({
    Object? medium = freezed,
    Object? original = freezed,
  }) {
    return _then(_ImageEntity(
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageEntity extends _ImageEntity {
  const _$_ImageEntity({required this.medium, required this.original})
      : super._();

  @override
  final String medium;
  @override
  final String original;

  @override
  String toString() {
    return 'ImageEntity(medium: $medium, original: $original)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageEntity &&
            const DeepCollectionEquality().equals(other.medium, medium) &&
            const DeepCollectionEquality().equals(other.original, original));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(medium),
      const DeepCollectionEquality().hash(original));

  @JsonKey(ignore: true)
  @override
  _$ImageEntityCopyWith<_ImageEntity> get copyWith =>
      __$ImageEntityCopyWithImpl<_ImageEntity>(this, _$identity);
}

abstract class _ImageEntity extends ImageEntity {
  const factory _ImageEntity(
      {required String medium, required String original}) = _$_ImageEntity;
  const _ImageEntity._() : super._();

  @override
  String get medium;
  @override
  String get original;
  @override
  @JsonKey(ignore: true)
  _$ImageEntityCopyWith<_ImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
