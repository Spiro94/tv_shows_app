import 'package:tv_shows_app/core/domain/episode.dart';
import 'package:tv_shows_app/core/domain/person.dart';
import 'package:tv_shows_app/core/infrastructure/dto/person_dto.dart';

import '../domain/tv_show.dart';
import 'dto/episode_dto.dart';
import 'dto/tv_show_dto.dart';

extension TvShowDTOListToDomainList on List<TvShowDTO> {
  List<TvShow> tvShowDTOListToDomain() {
    return map((e) => e.toDomain()).toList();
  }
}

extension EpisodeDTOListToDomainList on List<EpisodeDTO> {
  List<Episode> episodeDTOListToDomain() {
    return map((e) => e.toDomain()).toList();
  }
}

extension PersonDTOListToDomainList on List<PersonDTO> {
  List<Person> personDTOListToDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
