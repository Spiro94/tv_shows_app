import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/favorites/presentation/favorites_page.dart';
import 'package:tv_shows_app/people/presentation/people_page.dart';
import 'package:tv_shows_app/search/presentation/search_tv_shows_page.dart';

import '../../../home/presentation/home_page.dart';
import '../../shared/providers.dart';

class TabsWidget extends ConsumerWidget {
  const TabsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menu = ref.watch(menuNotifierProvider);
    final currentIndex = menu.page;

    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const FavoritesPage();
      case 2:
        return const SearchTvShowsPage();
      case 3:
        return const PeoplePage();
      default:
        return const HomePage();
    }
  }
}
