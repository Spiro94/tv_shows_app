import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/core/infrastructure/core_repository.dart';
import 'package:tv_shows_app/search/application/search_state.dart';

class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier(this._coreRepository) : super(const SearchState.initial());

  final CoreRepository _coreRepository;

  Future<void> searchTvShows(String query) async {
    state = const SearchState.initial();
    state = const SearchState.loading();

    if (query.isEmpty) {
      state = const SearchState.initial();
    } else {
      final result = await _coreRepository.searchTvShows(query);

      state = result.fold(
        (failure) {
          return SearchState.error(failure: failure);
        },
        (tvShows) {
          return SearchState.data(
            tvShows: tvShows,
          );
        },
      );
    }
  }
}
