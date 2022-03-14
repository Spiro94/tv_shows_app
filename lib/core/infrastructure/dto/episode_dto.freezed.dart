// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episode_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EpisodeDTO _$EpisodeDTOFromJson(Map<String, dynamic> json) {
  return _EpisodeDTO.fromJson(json);
}

/// @nodoc
class _$EpisodeDTOTearOff {
  const _$EpisodeDTOTearOff();

  _EpisodeDTO call(
      {required int id,
      required String name,
      required int season,
      required int number,
      required ImageEntityDTO? image,
      required String? summary}) {
    return _EpisodeDTO(
      id: id,
      name: name,
      season: season,
      number: number,
      image: image,
      summary: summary,
    );
  }

  EpisodeDTO fromJson(Map<String, Object?> json) {
    return EpisodeDTO.fromJson(json);
  }
}

/// @nodoc
const $EpisodeDTO = _$EpisodeDTOTearOff();

/// @nodoc
mixin _$EpisodeDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get season => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  ImageEntityDTO? get image => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeDTOCopyWith<EpisodeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeDTOCopyWith<$Res> {
  factory $EpisodeDTOCopyWith(
          EpisodeDTO value, $Res Function(EpisodeDTO) then) =
      _$EpisodeDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      int season,
      int number,
      ImageEntityDTO? image,
      String? summary});

  $ImageEntityDTOCopyWith<$Res>? get image;
}

/// @nodoc
class _$EpisodeDTOCopyWithImpl<$Res> implements $EpisodeDTOCopyWith<$Res> {
  _$EpisodeDTOCopyWithImpl(this._value, this._then);

  final EpisodeDTO _value;
  // ignore: unused_field
  final $Res Function(EpisodeDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? season = freezed,
    Object? number = freezed,
    Object? image = freezed,
    Object? summary = freezed,
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
      season: season == freezed
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageEntityDTO?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$EpisodeDTOCopyWith<$Res> implements $EpisodeDTOCopyWith<$Res> {
  factory _$EpisodeDTOCopyWith(
          _EpisodeDTO value, $Res Function(_EpisodeDTO) then) =
      __$EpisodeDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      int season,
      int number,
      ImageEntityDTO? image,
      String? summary});

  @override
  $ImageEntityDTOCopyWith<$Res>? get image;
}

/// @nodoc
class __$EpisodeDTOCopyWithImpl<$Res> extends _$EpisodeDTOCopyWithImpl<$Res>
    implements _$EpisodeDTOCopyWith<$Res> {
  __$EpisodeDTOCopyWithImpl(
      _EpisodeDTO _value, $Res Function(_EpisodeDTO) _then)
      : super(_value, (v) => _then(v as _EpisodeDTO));

  @override
  _EpisodeDTO get _value => super._value as _EpisodeDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? season = freezed,
    Object? number = freezed,
    Object? image = freezed,
    Object? summary = freezed,
  }) {
    return _then(_EpisodeDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      season: season == freezed
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageEntityDTO?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EpisodeDTO extends _EpisodeDTO with DiagnosticableTreeMixin {
  const _$_EpisodeDTO(
      {required this.id,
      required this.name,
      required this.season,
      required this.number,
      required this.image,
      required this.summary})
      : super._();

  factory _$_EpisodeDTO.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeDTOFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int season;
  @override
  final int number;
  @override
  final ImageEntityDTO? image;
  @override
  final String? summary;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EpisodeDTO(id: $id, name: $name, season: $season, number: $number, image: $image, summary: $summary)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EpisodeDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('season', season))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('summary', summary));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EpisodeDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.season, season) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.summary, summary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(season),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(summary));

  @JsonKey(ignore: true)
  @override
  _$EpisodeDTOCopyWith<_EpisodeDTO> get copyWith =>
      __$EpisodeDTOCopyWithImpl<_EpisodeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeDTOToJson(this);
  }
}

abstract class _EpisodeDTO extends EpisodeDTO {
  const factory _EpisodeDTO(
      {required int id,
      required String name,
      required int season,
      required int number,
      required ImageEntityDTO? image,
      required String? summary}) = _$_EpisodeDTO;
  const _EpisodeDTO._() : super._();

  factory _EpisodeDTO.fromJson(Map<String, dynamic> json) =
      _$_EpisodeDTO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get season;
  @override
  int get number;
  @override
  ImageEntityDTO? get image;
  @override
  String? get summary;
  @override
  @JsonKey(ignore: true)
  _$EpisodeDTOCopyWith<_EpisodeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
