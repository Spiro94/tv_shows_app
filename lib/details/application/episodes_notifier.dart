import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/core/infrastructure/core_repository.dart';

import 'episodes_state.dart';

class EpisodesNotifier extends StateNotifier<EpisodesState> {
  EpisodesNotifier(this._coreRepository) : super(const EpisodesState.initial());

  final CoreRepository _coreRepository;

  Future<void> getEpisodes(int tvShowId) async {
    state = const EpisodesState.loading();

    final result = await _coreRepository.getEpisodes(tvShowId);

    state = result.fold(
      (failure) {
        return EpisodesState.error(failure: failure);
      },
      (episodes) {
        return EpisodesState.data(
          episodes: episodes,
        );
      },
    );
  }
}
