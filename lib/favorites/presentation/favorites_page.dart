import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/favorites/infrastructure/providers.dart';

import '../../core/presentation/routes/router.gr.dart';

class FavoritesPage extends ConsumerStatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  ConsumerState<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends ConsumerState<FavoritesPage> {
  @override
  void initState() {
    Future.microtask(
        () => ref.read(favoritesNotifierProvider.notifier).getFavorites());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(favoritesNotifierProvider);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Favorites',
                style: theme.textTheme.headline3!.copyWith(fontSize: 40),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: state.when(
                      initial: () =>
                          const Center(child: Text('No favorites yet')),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      data: (tvShows) {
                        if (tvShows.isEmpty) {
                          return const Center(child: Text('No favorites yet'));
                        } else {
                          return GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              childAspectRatio: 1 / 2,
                              maxCrossAxisExtent: 100,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemCount: tvShows.length,
                            itemBuilder: (context, index) {
                              final tvShow = tvShows[index];
                              return GestureDetector(
                                onTap: () {
                                  context.pushRoute(
                                      TvShowDetailRoute(tvShow: tvShow));
                                },
                                child: SizedBox(
                                  height: 200,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 150,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: tvShow.image.original.isEmpty
                                              ? const Image(
                                                  image: AssetImage(
                                                      'assets/images/no_image.png'),
                                                )
                                              : CachedNetworkImage(
                                                  imageUrl:
                                                      tvShow.image.original,
                                                ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      Flexible(
                                        child: ClipRect(
                                          child: Text(
                                            tvShow.name,
                                            overflow: TextOverflow.fade,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      },
                      error: (failure) => const Center(child: Text('Error')))),
            ],
          ),
        ),
      ),
    );
  }
}
