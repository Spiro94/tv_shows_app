import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/core/shared/providers.dart';
import 'package:tv_shows_app/people/application/participation_notifier.dart';
import 'package:tv_shows_app/people/application/participation_state.dart';
import 'package:tv_shows_app/people/application/people_notifier.dart';
import 'package:tv_shows_app/people/application/people_state.dart';

final peopleNotifierProvider =
    StateNotifierProvider<PeopleNotifier, PeopleState>((ref) {
  return PeopleNotifier(ref.watch(coreRepositoryProvider));
});

final participationNotifierProvider =
    StateNotifierProvider<ParticipationNotifier, ParticipationState>((ref) {
  return ParticipationNotifier(ref.watch(coreRepositoryProvider));
});
