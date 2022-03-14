import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/core/shared/providers.dart';
import 'package:tv_shows_app/home/infrastructure/providers.dart';
import 'package:tv_shows_app/search/application/search_notifier.dart';
import 'package:tv_shows_app/search/application/search_state.dart';

final searchNotifierProvider =
    StateNotifierProvider<SearchNotifier, SearchState>((ref) {
  return SearchNotifier(ref.watch(coreRepositoryProvider));
});
