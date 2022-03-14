// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'person_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonDTO _$PersonDTOFromJson(Map<String, dynamic> json) {
  return _PersonDTO.fromJson(json);
}

/// @nodoc
class _$PersonDTOTearOff {
  const _$PersonDTOTearOff();

  _PersonDTO call(
      {required int id, required String name, required ImageEntityDTO? image}) {
    return _PersonDTO(
      id: id,
      name: name,
      image: image,
    );
  }

  PersonDTO fromJson(Map<String, Object?> json) {
    return PersonDTO.fromJson(json);
  }
}

/// @nodoc
const $PersonDTO = _$PersonDTOTearOff();

/// @nodoc
mixin _$PersonDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ImageEntityDTO? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonDTOCopyWith<PersonDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonDTOCopyWith<$Res> {
  factory $PersonDTOCopyWith(PersonDTO value, $Res Function(PersonDTO) then) =
      _$PersonDTOCopyWithImpl<$Res>;
  $Res call({int id, String name, ImageEntityDTO? image});

  $ImageEntityDTOCopyWith<$Res>? get image;
}

/// @nodoc
class _$PersonDTOCopyWithImpl<$Res> implements $PersonDTOCopyWith<$Res> {
  _$PersonDTOCopyWithImpl(this._value, this._then);

  final PersonDTO _value;
  // ignore: unused_field
  final $Res Function(PersonDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageEntityDTO?,
    ));
  }

  @override
  $ImageEntityDTOCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageEntityDTOCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc
abstract class _$PersonDTOCopyWith<$Res> implements $PersonDTOCopyWith<$Res> {
  factory _$PersonDTOCopyWith(
          _PersonDTO value, $Res Function(_PersonDTO) then) =
      __$PersonDTOCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, ImageEntityDTO? image});

  @override
  $ImageEntityDTOCopyWith<$Res>? get image;
}

/// @nodoc
class __$PersonDTOCopyWithImpl<$Res> extends _$PersonDTOCopyWithImpl<$Res>
    implements _$PersonDTOCopyWith<$Res> {
  __$PersonDTOCopyWithImpl(_PersonDTO _value, $Res Function(_PersonDTO) _then)
      : super(_value, (v) => _then(v as _PersonDTO));

  @override
  _PersonDTO get _value => super._value as _PersonDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_PersonDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageEntityDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonDTO extends _PersonDTO with DiagnosticableTreeMixin {
  const _$_PersonDTO(
      {required this.id, required this.name, required this.image})
      : super._();

  factory _$_PersonDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PersonDTOFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final ImageEntityDTO? image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonDTO(id: $id, name: $name, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PersonDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$PersonDTOCopyWith<_PersonDTO> get copyWith =>
      __$PersonDTOCopyWithImpl<_PersonDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonDTOToJson(this);
  }
}

abstract class _PersonDTO extends PersonDTO {
  const factory _PersonDTO(
      {required int id,
      required String name,
      required ImageEntityDTO? image}) = _$_PersonDTO;
  const _PersonDTO._() : super._();

  factory _PersonDTO.fromJson(Map<String, dynamic> json) =
      _$_PersonDTO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  ImageEntityDTO? get image;
  @override
  @JsonKey(ignore: true)
  _$PersonDTOCopyWith<_PersonDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
