// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleDTO _$ScheduleDTOFromJson(Map<String, dynamic> json) {
  return _ScheduleDTO.fromJson(json);
}

/// @nodoc
class _$ScheduleDTOTearOff {
  const _$ScheduleDTOTearOff();

  _ScheduleDTO call({required String time, required List<String> days}) {
    return _ScheduleDTO(
      time: time,
      days: days,
    );
  }

  ScheduleDTO fromJson(Map<String, Object?> json) {
    return ScheduleDTO.fromJson(json);
  }
}

/// @nodoc
const $ScheduleDTO = _$ScheduleDTOTearOff();

/// @nodoc
mixin _$ScheduleDTO {
  String get time => throw _privateConstructorUsedError;
  List<String> get days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDTOCopyWith<ScheduleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDTOCopyWith<$Res> {
  factory $ScheduleDTOCopyWith(
          ScheduleDTO value, $Res Function(ScheduleDTO) then) =
      _$ScheduleDTOCopyWithImpl<$Res>;
  $Res call({String time, List<String> days});
}

/// @nodoc
class _$ScheduleDTOCopyWithImpl<$Res> implements $ScheduleDTOCopyWith<$Res> {
  _$ScheduleDTOCopyWithImpl(this._value, this._then);

  final ScheduleDTO _value;
  // ignore: unused_field
  final $Res Function(ScheduleDTO) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? days = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ScheduleDTOCopyWith<$Res>
    implements $ScheduleDTOCopyWith<$Res> {
  factory _$ScheduleDTOCopyWith(
          _ScheduleDTO value, $Res Function(_ScheduleDTO) then) =
      __$ScheduleDTOCopyWithImpl<$Res>;
  @override
  $Res call({String time, List<String> days});
}

/// @nodoc
class __$ScheduleDTOCopyWithImpl<$Res> extends _$ScheduleDTOCopyWithImpl<$Res>
    implements _$ScheduleDTOCopyWith<$Res> {
  __$ScheduleDTOCopyWithImpl(
      _ScheduleDTO _value, $Res Function(_ScheduleDTO) _then)
      : super(_value, (v) => _then(v as _ScheduleDTO));

  @override
  _ScheduleDTO get _value => super._value as _ScheduleDTO;

  @override
  $Res call({
    Object? time = freezed,
    Object? days = freezed,
  }) {
    return _then(_ScheduleDTO(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleDTO extends _ScheduleDTO {
  const _$_ScheduleDTO({required this.time, required this.days}) : super._();

  factory _$_ScheduleDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDTOFromJson(json);

  @override
  final String time;
  @override
  final List<String> days;

  @override
  String toString() {
    return 'ScheduleDTO(time: $time, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScheduleDTO &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.days, days));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(days));

  @JsonKey(ignore: true)
  @override
  _$ScheduleDTOCopyWith<_ScheduleDTO> get copyWith =>
      __$ScheduleDTOCopyWithImpl<_ScheduleDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDTOToJson(this);
  }
}

abstract class _ScheduleDTO extends ScheduleDTO {
  const factory _ScheduleDTO(
      {required String time, required List<String> days}) = _$_ScheduleDTO;
  const _ScheduleDTO._() : super._();

  factory _ScheduleDTO.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDTO.fromJson;

  @override
  String get time;
  @override
  List<String> get days;
  @override
  @JsonKey(ignore: true)
  _$ScheduleDTOCopyWith<_ScheduleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
