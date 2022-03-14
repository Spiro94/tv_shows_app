import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/infrastructure/core_repository.dart';
import 'favorite_serie_state.dart';

class FavoriteSerieNotifier extends StateNotifier<FavoriteSerieState> {
  FavoriteSerieNotifier(this._coreRepository)
      : super(const FavoriteSerieState.initial());

  final CoreRepository _coreRepository;

  Future<void> checkFavorite(int tvShowId) async {
    state = const FavoriteSerieState.loading();

    final result = await _coreRepository.getFavorites();

    state = result.fold(
      (failure) => FavoriteSerieState.error(failure: failure),
      (tvShows) {
        final existList = tvShows.where((element) => element.id == tvShowId);
        return FavoriteSerieState.data(isFavorite: existList.isNotEmpty);
      },
    );
  }
}
