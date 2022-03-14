import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/favorites/infrastructure/providers.dart';
import 'package:tv_shows_app/home/application/favorite_serie_state.dart';
import 'package:tv_shows_app/home/infrastructure/providers.dart';

import '../../core/domain/tv_show.dart';
import '../infrastructure/providers.dart';
import 'widgets/episodes_widget.dart';

class TvShowDetailPage extends ConsumerStatefulWidget {
  const TvShowDetailPage({
    Key? key,
    required this.tvShow,
  }) : super(key: key);
  final TvShow tvShow;

  @override
  ConsumerState<TvShowDetailPage> createState() => _TvShowDetailPageState();
}

class _TvShowDetailPageState extends ConsumerState<TvShowDetailPage> {
  late bool isFavorite;

  @override
  void initState() {
    isFavorite = false;
    Future.microtask(() => ref
        .read(episodesNotifierProvider.notifier)
        .getEpisodes(widget.tvShow.id));
    Future.microtask(() => ref
        .read(favoriteSerieProvider.notifier)
        .checkFavorite(widget.tvShow.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    ref.listen<FavoriteSerieState>(favoriteSerieProvider, (previous, next) {
      next.maybeWhen(
        data: (isFav) {
          WidgetsBinding.instance!.addPostFrameCallback((_) {
            setState(() {
              isFavorite = isFav;
            });
          });
        },
        orElse: () {},
      );
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView(
            children: [
              widget.tvShow.image.original.isEmpty
                  ? const Image(
                      image: AssetImage('assets/images/no_image.png'),
                    )
                  : CachedNetworkImage(
                      imageUrl: widget.tvShow.image.original,
                      fit: BoxFit.fitHeight,
                      height: 300,
                      width: 50,
                    ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.tvShow.name,
                style: theme.textTheme.headline3,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.tvShow.genres.join(', '),
                style: theme.textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 5,
              ),
              if (widget.tvShow.schedule.days.isNotEmpty)
                Text(
                  '${widget.tvShow.schedule.time} on ${widget.tvShow.schedule.days.join(', ')}',
                  style: theme.textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                    ref
                        .read(favoritesNotifierProvider.notifier)
                        .saveFavorites(widget.tvShow);
                    ref.read(favoritesNotifierProvider.notifier).getFavorites();
                  });
                },
                child: Column(
                  children: [
                    isFavorite
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border,
                          ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Favorites'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              if (widget.tvShow.summary.isEmpty)
                Text(
                  'No description',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                )
              else
                Html(
                  data: widget.tvShow.summary,
                  style: {
                    'p': Style(
                      textAlign: TextAlign.justify,
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                    ),
                  },
                ),
              const SizedBox(
                height: 20,
              ),
              Consumer(
                builder: (context, ref, child) {
                  final state = ref.watch(episodesNotifierProvider);

                  return state.maybeWhen(
                      data: (episodes) {
                        if (episodes.isNotEmpty) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Seasons & Episodes',
                                style: theme.textTheme.headline4,
                                textAlign: TextAlign.start,
                              ),
                              EpisodesWidget(episodes: episodes),
                            ],
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                      orElse: () => const SizedBox());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
