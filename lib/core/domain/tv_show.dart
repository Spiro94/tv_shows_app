import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_shows_app/core/infrastructure/dto/tv_show_dto.dart';
import 'image_entity.dart';
import 'schedule.dart';

part 'tv_show.freezed.dart';

@freezed
class TvShow with _$TvShow {
  const TvShow._();

  const factory TvShow({
    required int id,
    required String url,
    required String name,
    required String type,
    required String language,
    required List<String> genres,
    required String status,
    required int? runtime,
    required int? averageRuntime,
    required String? premiered,
    required String? ended,
    required String? officialSite,
    required Schedule schedule,
    required String summary,
    required ImageEntity image,
  }) = _TvShow;

  TvShowDTO toDTO() => TvShowDTO(
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
        schedule: schedule.toDTO(),
        summary: summary,
        image: image.toDTO(),
      );
}
