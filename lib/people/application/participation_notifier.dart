import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/infrastructure/core_repository.dart';

import 'participation_state.dart';

class ParticipationNotifier extends StateNotifier<ParticipationState> {
  ParticipationNotifier(this._coreRepository)
      : super(const ParticipationState.initial());

  final CoreRepository _coreRepository;

  Future<void> getParticipations(int personId) async {
    state = const ParticipationState.loading();

    final result = await _coreRepository.getParticipations(personId);

    state = result.fold(
      (failure) => ParticipationState.error(failure: failure),
      (tvShows) {
        return ParticipationState.data(tvShows: tvShows);
      },
    );
  }
}
