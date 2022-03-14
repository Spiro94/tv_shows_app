import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/core/infrastructure/core_repository.dart';

import 'home_series_state.dart';

class HomeSeriesNotifier extends StateNotifier<HomeSeriesState> {
  HomeSeriesNotifier(this._coreRepository)
      : super(const HomeSeriesState.initial(tvShows: []));

  final CoreRepository _coreRepository;

  Future<void> getTvShows({int page = 1}) async {
    state = HomeSeriesState.loading(tvShows: state.tvShows);

    final result = await _coreRepository.getTvShows(page: page);

    state = result.fold(
      (failure) {
        return HomeSeriesState.error(failure: failure, tvShows: state.tvShows);
      },
      (tvShows) {
        return HomeSeriesState.data(
          tvShows: [...state.tvShows, ...tvShows],
          hasMore: tvShows.length > 49,
        );
      },
    );
  }
}
