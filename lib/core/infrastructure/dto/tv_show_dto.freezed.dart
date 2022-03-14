// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tv_show_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TvShowDTO _$TvShowDTOFromJson(Map<String, dynamic> json) {
  return _TvShowDTO.fromJson(json);
}

/// @nodoc
class _$TvShowDTOTearOff {
  const _$TvShowDTOTearOff();

  _TvShowDTO call(
      {required int id,
      required String url,
      required String name,
      required String? type,
      required String? language,
      required List<String>? genres,
      required String? status,
      required int? runtime,
      required int? averageRuntime,
      required String? premiered,
      required String? ended,
      required String? officialSite,
      required ScheduleDTO schedule,
      required String? summary,
      required ImageEntityDTO? image}) {
    return _TvShowDTO(
      id: id,
      url: url,
      name: name,
      type: type,
      language: language,
      genres: genres,
      status: status,
      runtime: runtime,
      averageRuntime: averageRuntime,
      premiered: premiered,
      ended: ended,
      officialSite: officialSite,
      schedule: schedule,
      summary: summary,
      image: image,
    );
  }

  TvShowDTO fromJson(Map<String, Object?> json) {
    return TvShowDTO.fromJson(json);
  }
}

/// @nodoc
const $TvShowDTO = _$TvShowDTOTearOff();

/// @nodoc
mixin _$TvShowDTO {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  int? get averageRuntime => throw _privateConstructorUsedError;
  String? get premiered => throw _privateConstructorUsedError;
  String? get ended => throw _privateConstructorUsedError;
  String? get officialSite => throw _privateConstructorUsedError;
  ScheduleDTO get schedule => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  ImageEntityDTO? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvShowDTOCopyWith<TvShowDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowDTOCopyWith<$Res> {
  factory $TvShowDTOCopyWith(TvShowDTO value, $Res Function(TvShowDTO) then) =
      _$TvShowDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String url,
      String name,
      String? type,
      String? language,
      List<String>? genres,
      String? status,
      int? runtime,
      int? averageRuntime,
      String? premiered,
      String? ended,
      String? officialSite,
      ScheduleDTO schedule,
      String? summary,
      ImageEntityDTO? image});

  $ScheduleDTOCopyWith<$Res> get schedule;
  $ImageEntityDTOCopyWith<$Res>? get image;
}

/// @nodoc
class _$TvShowDTOCopyWithImpl<$Res> implements $TvShowDTOCopyWith<$Res> {
  _$TvShowDTOCopyWithImpl(this._value, this._then);

  final TvShowDTO _value;
  // ignore: unused_field
  final $Res Function(TvShowDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? language = freezed,
    Object? genres = freezed,
    Object? status = freezed,
    Object? runtime = freezed,
    Object? averageRuntime = freezed,
    Object? premiered = freezed,
    Object? ended = freezed,
    Object? officialSite = freezed,
    Object? schedule = freezed,
    Object? summary = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRuntime: averageRuntime == freezed
          ? _value.averageRuntime
          : averageRuntime // ignore: cast_nullable_to_non_nullable
              as int?,
      premiered: premiered == freezed
          ? _value.premiered
          : premiered // ignore: cast_nullable_to_non_nullable
              as String?,
      ended: ended == freezed
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as String?,
      officialSite: officialSite == freezed
          ? _value.officialSite
          : officialSite // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleDTO,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageEntityDTO?,
    ));
  }

  @override
  $ScheduleDTOCopyWith<$Res> get schedule {
    return $ScheduleDTOCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value));
    });
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
abstract class _$TvShowDTOCopyWith<$Res> implements $TvShowDTOCopyWith<$Res> {
  factory _$TvShowDTOCopyWith(
          _TvShowDTO value, $Res Function(_TvShowDTO) then) =
      __$TvShowDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String url,
      String name,
      String? type,
      String? language,
      List<String>? genres,
      String? status,
      int? runtime,
      int? averageRuntime,
      String? premiered,
      String? ended,
      String? officialSite,
      ScheduleDTO schedule,
      String? summary,
      ImageEntityDTO? image});

  @override
  $ScheduleDTOCopyWith<$Res> get schedule;
  @override
  $ImageEntityDTOCopyWith<$Res>? get image;
}

/// @nodoc
class __$TvShowDTOCopyWithImpl<$Res> extends _$TvShowDTOCopyWithImpl<$Res>
    implements _$TvShowDTOCopyWith<$Res> {
  __$TvShowDTOCopyWithImpl(_TvShowDTO _value, $Res Function(_TvShowDTO) _then)
      : super(_value, (v) => _then(v as _TvShowDTO));

  @override
  _TvShowDTO get _value => super._value as _TvShowDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? language = freezed,
    Object? genres = freezed,
    Object? status = freezed,
    Object? runtime = freezed,
    Object? averageRuntime = freezed,
    Object? premiered = freezed,
    Object? ended = freezed,
    Object? officialSite = freezed,
    Object? schedule = freezed,
    Object? summary = freezed,
    Object? image = freezed,
  }) {
    return _then(_TvShowDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRuntime: averageRuntime == freezed
          ? _value.averageRuntime
          : averageRuntime // ignore: cast_nullable_to_non_nullable
              as int?,
      premiered: premiered == freezed
          ? _value.premiered
          : premiered // ignore: cast_nullable_to_non_nullable
              as String?,
      ended: ended == freezed
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as String?,
      officialSite: officialSite == freezed
          ? _value.officialSite
          : officialSite // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as ScheduleDTO,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageEntityDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TvShowDTO extends _TvShowDTO {
  const _$_TvShowDTO(
      {required this.id,
      required this.url,
      required this.name,
      required this.type,
      required this.language,
      required this.genres,
      required this.status,
      required this.runtime,
      required this.averageRuntime,
      required this.premiered,
      required this.ended,
      required this.officialSite,
      required this.schedule,
      required this.summary,
      required this.image})
      : super._();

  factory _$_TvShowDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TvShowDTOFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  final String name;
  @override
  final String? type;
  @override
  final String? language;
  @override
  final List<String>? genres;
  @override
  final String? status;
  @override
  final int? runtime;
  @override
  final int? averageRuntime;
  @override
  final String? premiered;
  @override
  final String? ended;
  @override
  final String? officialSite;
  @override
  final ScheduleDTO schedule;
  @override
  final String? summary;
  @override
  final ImageEntityDTO? image;

  @override
  String toString() {
    return 'TvShowDTO(id: $id, url: $url, name: $name, type: $type, language: $language, genres: $genres, status: $status, runtime: $runtime, averageRuntime: $averageRuntime, premiered: $premiered, ended: $ended, officialSite: $officialSite, schedule: $schedule, summary: $summary, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TvShowDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.runtime, runtime) &&
            const DeepCollectionEquality()
                .equals(other.averageRuntime, averageRuntime) &&
            const DeepCollectionEquality().equals(other.premiered, premiered) &&
            const DeepCollectionEquality().equals(other.ended, ended) &&
            const DeepCollectionEquality()
                .equals(other.officialSite, officialSite) &&
            const DeepCollectionEquality().equals(other.schedule, schedule) &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(genres),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(runtime),
      const DeepCollectionEquality().hash(averageRuntime),
      const DeepCollectionEquality().hash(premiered),
      const DeepCollectionEquality().hash(ended),
      const DeepCollectionEquality().hash(officialSite),
      const DeepCollectionEquality().hash(schedule),
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$TvShowDTOCopyWith<_TvShowDTO> get copyWith =>
      __$TvShowDTOCopyWithImpl<_TvShowDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TvShowDTOToJson(this);
  }
}

abstract class _TvShowDTO extends TvShowDTO {
  const factory _TvShowDTO(
      {required int id,
      required String url,
      required String name,
      required String? type,
      required String? language,
      required List<String>? genres,
      required String? status,
      required int? runtime,
      required int? averageRuntime,
      required String? premiered,
      required String? ended,
      required String? officialSite,
      required ScheduleDTO schedule,
      required String? summary,
      required ImageEntityDTO? image}) = _$_TvShowDTO;
  const _TvShowDTO._() : super._();

  factory _TvShowDTO.fromJson(Map<String, dynamic> json) =
      _$_TvShowDTO.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  String get name;
  @override
  String? get type;
  @override
  String? get language;
  @override
  List<String>? get genres;
  @override
  String? get status;
  @override
  int? get runtime;
  @override
  int? get averageRuntime;
  @override
  String? get premiered;
  @override
  String? get ended;
  @override
  String? get officialSite;
  @override
  ScheduleDTO get schedule;
  @override
  String? get summary;
  @override
  ImageEntityDTO? get image;
  @override
  @JsonKey(ignore: true)
  _$TvShowDTOCopyWith<_TvShowDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
