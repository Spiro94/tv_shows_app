import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/home/application/favorite_serie_notifier.dart';
import 'package:tv_shows_app/home/application/favorite_serie_state.dart';

import '../../core/shared/providers.dart';
import '../application/home_series_notifier.dart';
import '../application/home_series_state.dart';

final homeSeriesNotifierProvider =
    StateNotifierProvider<HomeSeriesNotifier, HomeSeriesState>((ref) {
  return HomeSeriesNotifier(ref.watch(coreRepositoryProvider));
});

final favoriteSerieProvider =
    StateNotifierProvider<FavoriteSerieNotifier, FavoriteSerieState>((ref) {
  return FavoriteSerieNotifier(ref.watch(coreRepositoryProvider));
});
