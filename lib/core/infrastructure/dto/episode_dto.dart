import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_shows_app/core/domain/episode.dart';
import 'package:tv_shows_app/core/infrastructure/dto/image_entity_dto.dart';

import '../../domain/image_entity.dart';

part 'episode_dto.freezed.dart';
part 'episode_dto.g.dart';

@freezed
class EpisodeDTO with _$EpisodeDTO {
  const EpisodeDTO._();

  const factory EpisodeDTO({
    required int id,
    required String name,
    required int season,
    required int number,
    required ImageEntityDTO? image,
    required String? summary,
  }) = _EpisodeDTO;

  /// Generates fromJson and toJson methods
  factory EpisodeDTO.fromJson(Map<String, dynamic> json) =>
      _$EpisodeDTOFromJson(json);

  Episode toDomain() => Episode(
        id: id,
        name: name,
        season: season,
        number: number,
        image: image == null
            ? const ImageEntity(medium: '', original: '')
            : image!.toDomain(),
        summary: summary ?? '',
      );
}
