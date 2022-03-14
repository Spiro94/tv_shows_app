import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/infrastructure/core_repository.dart';
import 'people_state.dart';

class PeopleNotifier extends StateNotifier<PeopleState> {
  PeopleNotifier(this._coreRepository) : super(const PeopleState.initial());

  final CoreRepository _coreRepository;

  Future<void> searchPeople(String query) async {
    state = const PeopleState.initial();
    state = const PeopleState.loading();

    if (query.isEmpty) {
      state = const PeopleState.initial();
    } else {
      final result = await _coreRepository.searchPeople(query);

      state = result.fold(
        (failure) {
          return PeopleState.error(failure: failure);
        },
        (people) {
          return PeopleState.data(
            people: people,
          );
        },
      );
    }
  }
}
