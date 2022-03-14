import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/shared/providers.dart';
import '../application/episodes_notifier.dart';
import '../application/episodes_state.dart';

final episodesNotifierProvider =
    StateNotifierProvider<EpisodesNotifier, EpisodesState>((ref) {
  return EpisodesNotifier(ref.watch(coreRepositoryProvider));
});
