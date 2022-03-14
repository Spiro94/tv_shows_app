import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tv_shows_app/core/infrastructure/dto/person_dto.dart';

import '../../core/infrastructure/dto/episode_dto.dart';
import '../../core/infrastructure/dto/tv_show_dto.dart';
import '../../core/infrastructure/global_exceptions.dart';
import '../../core/shared/constants.dart';

class CoreService {
  CoreService(this._dio);

  final Dio _dio;

  Future<List<TvShowDTO>> getTvShows({int page = 1}) async {
    try {
      final requestUri = Uri.https(
        baseUrl,
        '/shows',
      );

      final result = await _dio.getUri(requestUri);

      if (result.statusCode == 200) {
        final tvShows = <TvShowDTO>[];
        for (var tvShowString in result.data) {
          tvShows.add(TvShowDTO.fromJson(tvShowString));
        }

        ///Workaround to endpoint not responding in flutter when second page is being requested
        if (page == 1) {
          return tvShows.getRange(0, 50).toList();
        }
        if (page == 2) {
          return tvShows.getRange(51, 100).toList();
        }
        if (page == 3) {
          return tvShows.getRange(101, 150).toList();
        }
        if (page > 3) {
          return tvShows.getRange(151, 200).toList();
        } else {
          return tvShows.getRange(200, 244).toList();
        }
      } else {
        throw RestApiException(
          errorCode: result.statusCode,
          errorMessage: result.statusMessage,
        );
      }
    } on DioError catch (_) {
      throw const RestApiException(
        errorCode: 500,
        errorMessage: 'Error requesting data',
      );
    }
  }

  Future<List<EpisodeDTO>> getEpisodes(int tvShowId) async {
    try {
      final requestUri = Uri.https(
        baseUrl,
        '/shows/$tvShowId/episodes',
      );

      final result = await _dio.getUri(requestUri);

      if (result.statusCode == 200) {
        final episodes = <EpisodeDTO>[];
        for (var espisodesString in result.data) {
          episodes.add(EpisodeDTO.fromJson(espisodesString));
        }

        return episodes;
      } else {
        throw RestApiException(
          errorCode: result.statusCode,
          errorMessage: result.statusMessage,
        );
      }
    } on DioError catch (_) {
      throw const RestApiException(
        errorCode: 500,
        errorMessage: 'Error requesting data',
      );
    }
  }

  Future<List<TvShowDTO>> searchTvShows(String query) async {
    try {
      final requestUri = Uri.https(
        baseUrl,
        '/search/shows',
        {'q': query},
      );

      final result = await _dio.getUri(requestUri);

      if (result.statusCode == 200) {
        final tvShows = <TvShowDTO>[];

        for (var tvShowString in result.data) {
          tvShows.add(TvShowDTO.fromJson(tvShowString['show']));
        }
        return tvShows;
      } else {
        throw RestApiException(
          errorCode: result.statusCode,
          errorMessage: result.statusMessage,
        );
      }
    } on DioError catch (_) {
      throw const RestApiException(
        errorCode: 500,
        errorMessage: 'Error requesting data',
      );
    }
  }

  Future<List<PersonDTO>> searchPeople(String query) async {
    try {
      final requestUri = Uri.https(
        baseUrl,
        '/search/people',
        {'q': query},
      );

      final result = await _dio.getUri(requestUri);

      if (result.statusCode == 200) {
        final people = <PersonDTO>[];

        for (var peopleString in result.data) {
          people.add(PersonDTO.fromJson(peopleString['person']));
        }
        return people;
      } else {
        throw RestApiException(
          errorCode: result.statusCode,
          errorMessage: result.statusMessage,
        );
      }
    } on DioError catch (_) {
      throw const RestApiException(
        errorCode: 500,
        errorMessage: 'Error requesting data',
      );
    }
  }

  Future<List<TvShowDTO>> getParticipations(int personId) async {
    try {
      final requestUri = Uri.https(
        baseUrl,
        'people/$personId/castcredits',
      );

      final result = await _dio.getUri(requestUri);

      if (result.statusCode == 200) {
        final tvShows = <TvShowDTO>[];

        for (var dataString in result.data) {
          final url = dataString['_links']['show']['href'] as String;

          final tvShowId = url.split('/').last;

          final uriShow = Uri.https(
            baseUrl,
            '/shows/$tvShowId',
          );

          final result = await _dio.getUri(uriShow);

          if (result.statusCode == 200) {
            tvShows.add(TvShowDTO.fromJson(result.data));
          } else {
            throw RestApiException(
              errorCode: result.statusCode,
              errorMessage: result.statusMessage,
            );
          }
        }
        return tvShows;
      } else {
        throw RestApiException(
          errorCode: result.statusCode,
          errorMessage: result.statusMessage,
        );
      }
    } on DioError catch (_) {
      throw const RestApiException(
        errorCode: 500,
        errorMessage: 'Error requesting data',
      );
    }
  }
}
