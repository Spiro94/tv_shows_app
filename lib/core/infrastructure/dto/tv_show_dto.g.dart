// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TvShowDTO _$$_TvShowDTOFromJson(Map<String, dynamic> json) => _$_TvShowDTO(
      id: json['id'] as int,
      url: json['url'] as String,
      name: json['name'] as String,
      type: json['type'] as String?,
      language: json['language'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: json['status'] as String?,
      runtime: json['runtime'] as int?,
      averageRuntime: json['averageRuntime'] as int?,
      premiered: json['premiered'] as String?,
      ended: json['ended'] as String?,
      officialSite: json['officialSite'] as String?,
      schedule: ScheduleDTO.fromJson(json['schedule'] as Map<String, dynamic>),
      summary: json['summary'] as String?,
      image: json['image'] == null
          ? null
          : ImageEntityDTO.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TvShowDTOToJson(_$_TvShowDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'type': instance.type,
      'language': instance.language,
      'genres': instance.genres,
      'status': instance.status,
      'runtime': instance.runtime,
      'averageRuntime': instance.averageRuntime,
      'premiered': instance.premiered,
      'ended': instance.ended,
      'officialSite': instance.officialSite,
      'schedule': instance.schedule,
      'summary': instance.summary,
      'image': instance.image,
    };
