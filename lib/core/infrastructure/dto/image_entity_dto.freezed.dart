// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_entity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageEntityDTO _$ImageEntityDTOFromJson(Map<String, dynamic> json) {
  return _ImageEntityDTO.fromJson(json);
}

/// @nodoc
class _$ImageEntityDTOTearOff {
  const _$ImageEntityDTOTearOff();

  _ImageEntityDTO call({required String medium, required String original}) {
    return _ImageEntityDTO(
      medium: medium,
      original: original,
    );
  }

  ImageEntityDTO fromJson(Map<String, Object?> json) {
    return ImageEntityDTO.fromJson(json);
  }
}

/// @nodoc
const $ImageEntityDTO = _$ImageEntityDTOTearOff();

/// @nodoc
mixin _$ImageEntityDTO {
  String get medium => throw _privateConstructorUsedError;
  String get original => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageEntityDTOCopyWith<ImageEntityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEntityDTOCopyWith<$Res> {
  factory $ImageEntityDTOCopyWith(
          ImageEntityDTO value, $Res Function(ImageEntityDTO) then) =
      _$ImageEntityDTOCopyWithImpl<$Res>;
  $Res call({String medium, String original});
}

/// @nodoc
class _$ImageEntityDTOCopyWithImpl<$Res>
    implements $ImageEntityDTOCopyWith<$Res> {
  _$ImageEntityDTOCopyWithImpl(this._value, this._then);

  final ImageEntityDTO _value;
  // ignore: unused_field
  final $Res Function(ImageEntityDTO) _then;

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
abstract class _$ImageEntityDTOCopyWith<$Res>
    implements $ImageEntityDTOCopyWith<$Res> {
  factory _$ImageEntityDTOCopyWith(
          _ImageEntityDTO value, $Res Function(_ImageEntityDTO) then) =
      __$ImageEntityDTOCopyWithImpl<$Res>;
  @override
  $Res call({String medium, String original});
}

/// @nodoc
class __$ImageEntityDTOCopyWithImpl<$Res>
    extends _$ImageEntityDTOCopyWithImpl<$Res>
    implements _$ImageEntityDTOCopyWith<$Res> {
  __$ImageEntityDTOCopyWithImpl(
      _ImageEntityDTO _value, $Res Function(_ImageEntityDTO) _then)
      : super(_value, (v) => _then(v as _ImageEntityDTO));

  @override
  _ImageEntityDTO get _value => super._value as _ImageEntityDTO;

  @override
  $Res call({
    Object? medium = freezed,
    Object? original = freezed,
  }) {
    return _then(_ImageEntityDTO(
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
@JsonSerializable()
class _$_ImageEntityDTO extends _ImageEntityDTO {
  const _$_ImageEntityDTO({required this.medium, required this.original})
      : super._();

  factory _$_ImageEntityDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ImageEntityDTOFromJson(json);

  @override
  final String medium;
  @override
  final String original;

  @override
  String toString() {
    return 'ImageEntityDTO(medium: $medium, original: $original)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageEntityDTO &&
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
  _$ImageEntityDTOCopyWith<_ImageEntityDTO> get copyWith =>
      __$ImageEntityDTOCopyWithImpl<_ImageEntityDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageEntityDTOToJson(this);
  }
}

abstract class _ImageEntityDTO extends ImageEntityDTO {
  const factory _ImageEntityDTO(
      {required String medium, required String original}) = _$_ImageEntityDTO;
  const _ImageEntityDTO._() : super._();

  factory _ImageEntityDTO.fromJson(Map<String, dynamic> json) =
      _$_ImageEntityDTO.fromJson;

  @override
  String get medium;
  @override
  String get original;
  @override
  @JsonKey(ignore: true)
  _$ImageEntityDTOCopyWith<_ImageEntityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
