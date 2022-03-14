// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EpisodeDTO _$$_EpisodeDTOFromJson(Map<String, dynamic> json) =>
    _$_EpisodeDTO(
      id: json['id'] as int,
      name: json['name'] as String,
      season: json['season'] as int,
      number: json['number'] as int,
      image: json['image'] == null
          ? null
          : ImageEntityDTO.fromJson(json['image'] as Map<String, dynamic>),
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$$_EpisodeDTOToJson(_$_EpisodeDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'season': instance.season,
      'number': instance.number,
      'image': instance.image,
      'summary': instance.summary,
    };
