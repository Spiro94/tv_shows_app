import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/image_entity.dart';
import '../../domain/person.dart';
import 'image_entity_dto.dart';

part 'person_dto.freezed.dart';
part 'person_dto.g.dart';

@freezed
class PersonDTO with _$PersonDTO {
  const PersonDTO._();

  const factory PersonDTO({
    required int id,
    required String name,
    required ImageEntityDTO? image,
  }) = _PersonDTO;

  /// Generates fromJson and toJson methods
  factory PersonDTO.fromJson(Map<String, dynamic> json) =>
      _$PersonDTOFromJson(json);

  Person toDomain() => Person(
        id: id,
        name: name,
        image: image == null
            ? const ImageEntity(medium: '', original: '')
            : image!.toDomain(),
      );
}
