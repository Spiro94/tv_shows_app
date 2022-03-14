import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/core/domain/tv_show.dart';
import 'package:tv_shows_app/core/infrastructure/core_repository.dart';
import 'package:tv_shows_app/favorites/application/favorites_state.dart';

class FavoritesNotifier extends StateNotifier<FavoritesState> {
  FavoritesNotifier(this._coreRepository)
      : super(const FavoritesState.initial());

  final CoreRepository _coreRepository;

  Future<void> getFavorites() async {
    state = const FavoritesState.loading();

    final result = await _coreRepository.getFavorites();

    state = result.fold(
      (failure) => FavoritesState.error(failure: failure),
      (tvShows) => FavoritesState.data(tvShows: tvShows),
    );
  }

  Future<void> saveFavorites(TvShow tvShow) async {
    state = const FavoritesState.loading();

    final result = await _coreRepository.saveFavorite(tvShow);

    state = result.fold(
      (failure) => FavoritesState.error(failure: failure),
      (tvShows) => FavoritesState.data(tvShows: tvShows),
    );
  }
}
