import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/core/shared/providers.dart';
import 'package:tv_shows_app/favorites/application/favorites_notifier.dart';
import 'package:tv_shows_app/favorites/application/favorites_state.dart';

final favoritesNotifierProvider =
    StateNotifierProvider<FavoritesNotifier, FavoritesState>((ref) {
  return FavoritesNotifier(ref.watch(coreRepositoryProvider));
});
