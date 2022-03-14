// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleDTO _$$_ScheduleDTOFromJson(Map<String, dynamic> json) =>
    _$_ScheduleDTO(
      time: json['time'] as String,
      days: (json['days'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ScheduleDTOToJson(_$_ScheduleDTO instance) =>
    <String, dynamic>{
      'time': instance.time,
      'days': instance.days,
    };
