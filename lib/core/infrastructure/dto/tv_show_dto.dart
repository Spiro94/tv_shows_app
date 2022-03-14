import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_shows_app/core/domain/image_entity.dart';

import '../../domain/tv_show.dart';
import 'image_entity_dto.dart';
import 'schedule_dto.dart';

part 'tv_show_dto.freezed.dart';
part 'tv_show_dto.g.dart';

@freezed
class TvShowDTO with _$TvShowDTO {
  const TvShowDTO._();

  const factory TvShowDTO({
    required int id,
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
    required ImageEntityDTO? image,
  }) = _TvShowDTO;

  /// Generates fromJson and toJson methods
  factory TvShowDTO.fromJson(Map<String, dynamic> json) =>
      _$TvShowDTOFromJson(json);

  TvShow toDomain() => TvShow(
        id: id,
        url: url,
        name: name,
        type: type ?? '',
        language: language ?? '',
        genres: genres ?? [],
        status: status ?? '',
        runtime: runtime,
        averageRuntime: averageRuntime,
        premiered: premiered,
        ended: ended,
        officialSite: officialSite,
        schedule: schedule.toDomain(),
        summary: summary ?? '',
        image: image == null
            ? const ImageEntity(medium: '', original: '')
            : image!.toDomain(),
      );
}
