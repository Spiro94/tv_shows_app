import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:tv_shows_app/core/domain/person.dart';
import 'package:tv_shows_app/core/infrastructure/core_local_service.dart';

import '../../core/domain/common_failure.dart';
import '../../core/domain/episode.dart';
import '../../core/domain/tv_show.dart';
import '../../core/infrastructure/extensions.dart';
import '../../core/infrastructure/global_exceptions.dart';
import 'core_service.dart';

class CoreRepository {
  CoreRepository(
    this._coreService,
    this._coreLocalService,
  );

  final CoreService _coreService;
  final CoreLocalService _coreLocalService;

  Future<Either<CommonFailure, List<TvShow>>> getTvShows({int page = 1}) async {
    try {
      final result = await _coreService.getTvShows(page: page);
      return right(result.tvShowDTOListToDomain());
    } on RestApiException catch (e) {
      return left(CommonFailure.server(
          message: e.errorMessage ?? '', code: e.errorCode ?? 500));
    }
  }

  Future<Either<CommonFailure, Map<int, List<Episode>>>> getEpisodes(
      int tvShowId) async {
    try {
      final result = await _coreService.getEpisodes(tvShowId);
      final episodes = result.episodeDTOListToDomain();

      final groups = groupBy(episodes, (Episode e) {
        return e.season;
      });
      return right(groups);
    } on RestApiException catch (e) {
      return left(CommonFailure.server(
          message: e.errorMessage ?? '', code: e.errorCode ?? 500));
    }
  }

  Future<Either<CommonFailure, List<TvShow>>> searchTvShows(
      String query) async {
    try {
      final result = await _coreService.searchTvShows(query);
      return right(result.tvShowDTOListToDomain());
    } on RestApiException catch (e) {
      return left(CommonFailure.server(
          message: e.errorMessage ?? '', code: e.errorCode ?? 500));
    }
  }

  Future<Either<CommonFailure, List<TvShow>>> getParticipations(
      int personId) async {
    try {
      final result = await _coreService.getParticipations(personId);
      return right(result.tvShowDTOListToDomain());
    } on RestApiException catch (e) {
      return left(CommonFailure.server(
          message: e.errorMessage ?? '', code: e.errorCode ?? 500));
    }
  }

  Future<Either<CommonFailure, List<Person>>> searchPeople(String query) async {
    try {
      final result = await _coreService.searchPeople(query);
      return right(result.personDTOListToDomain());
    } on RestApiException catch (e) {
      return left(CommonFailure.server(
          message: e.errorMessage ?? '', code: e.errorCode ?? 500));
    }
  }

  Future<Either<CommonFailure, List<TvShow>>> getFavorites() async {
    try {
      final result = await _coreLocalService.getFavorites();
      return right(
          result.tvShowDTOListToDomain().sortedBy((element) => element.name));
    } on RestApiException catch (e) {
      return left(CommonFailure.server(
          message: e.errorMessage ?? '', code: e.errorCode ?? 500));
    }
  }

  Future<Either<CommonFailure, List<TvShow>>> saveFavorite(
      TvShow tvShow) async {
    try {
      final result = await _coreLocalService.saveFavorite(tvShow.toDTO());
      return right(result.tvShowDTOListToDomain());
    } on RestApiException catch (e) {
      return left(CommonFailure.server(
          message: e.errorMessage ?? '', code: e.errorCode ?? 500));
    }
  }

  Future<Either<CommonFailure, bool>> deleteFavorite(int tvShowId) async {
    try {
      final result = await _coreLocalService.deleteFavorite(tvShowId);
      return right(result);
    } on RestApiException catch (e) {
      return left(CommonFailure.server(
          message: e.errorMessage ?? '', code: e.errorCode ?? 500));
    }
  }

  Future<Either<CommonFailure, bool>> checkPinIsSet() async {
    try {
      final result = await _coreLocalService.checkPinIsSet();
      return right(result);
    } on RestApiException catch (e) {
      return left(CommonFailure.server(
          message: e.errorMessage ?? '', code: e.errorCode ?? 500));
    }
  }

  Future<Either<CommonFailure, bool>> setPin(String pin) async {
    try {
      final result = await _coreLocalService.setPin(pin);
      return right(result);
    } on RestApiException catch (e) {
      return left(CommonFailure.server(
          message: e.errorMessage ?? '', code: e.errorCode ?? 500));
    }
  }

  Future<Either<CommonFailure, bool>> authenticate(String pin) async {
    try {
      final result = await _coreLocalService.authenticate(pin);
      return right(result);
    } on RestApiException catch (e) {
      return left(CommonFailure.server(
          message: e.errorMessage ?? '', code: e.errorCode ?? 500));
    }
  }
}
