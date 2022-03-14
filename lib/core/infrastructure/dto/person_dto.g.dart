// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonDTO _$$_PersonDTOFromJson(Map<String, dynamic> json) => _$_PersonDTO(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] == null
          ? null
          : ImageEntityDTO.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PersonDTOToJson(_$_PersonDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
