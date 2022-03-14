import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'dto/tv_show_dto.dart';

class CoreLocalService {
  Future<List<TvShowDTO>> getFavorites() async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    final String? favoritesString = prefs.getString('favorites');

    return _getFavorites(favoritesString);
  }

  Future<List<TvShowDTO>> saveFavorite(TvShowDTO tvShow) async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    final String? favoritesString = prefs.getString('favorites');

    String favoritesToSave;
    List<TvShowDTO> tvShows = _getFavorites(favoritesString);
    final existList =
        tvShows.where((element) => element.id == tvShow.id).toList();
    if (existList.isEmpty) {
      tvShows.add(tvShow);

      favoritesToSave = json.encode(tvShows);
    } else {
      tvShows.removeWhere((element) => element.id == tvShow.id);
      favoritesToSave = json.encode(tvShows);
    }
    await prefs.setString('favorites', favoritesToSave);
    return tvShows;
  }

  Future<bool> deleteFavorite(int tvShowId) async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    final String? favoritesString = prefs.getString('favorites');

    List<TvShowDTO> tvShows = _getFavorites(favoritesString);

    tvShows.removeWhere((element) => element.id == tvShowId);

    final favoritesToSave = json.encode(tvShows);

    return await prefs.setString('favorites', favoritesToSave);
  }

  List<TvShowDTO> _getFavorites(String? favoritesString) {
    final tvShows = <TvShowDTO>[];
    if (favoritesString != null && favoritesString.isNotEmpty) {
      final favoritesMap = json.decode(favoritesString);

      for (var tvShowString in favoritesMap) {
        tvShows.add(TvShowDTO.fromJson(tvShowString));
      }
    }
    return tvShows;
  }

  Future<bool> checkPinIsSet() async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    final String? pinString = prefs.getString('pin');

    return pinString != null;
  }

  Future<bool> setPin(String pin) async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setString('pin', pin);
  }

  Future<bool> authenticate(String pin) async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    final String? pinString = prefs.getString('pin');

    if (pinString != null) {
      return pinString == pin;
    } else {
      return false;
    }
  }
}
