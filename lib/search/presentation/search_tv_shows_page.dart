import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/search/infrastructure/providers.dart';

import '../../core/domain/menu.dart';
import '../../core/presentation/routes/router.gr.dart';
import '../../core/shared/providers.dart';

class SearchTvShowsPage extends ConsumerStatefulWidget {
  const SearchTvShowsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchTvShowsPage> createState() => _SearchTvShowsPageState();
}

class _SearchTvShowsPageState extends ConsumerState<SearchTvShowsPage> {
  late TextEditingController _textController;
  String currentQuery = '';

  @override
  void initState() {
    _textController = TextEditingController()
      ..addListener(() {
        if (currentQuery != _textController.text) {
          ref
              .read(searchNotifierProvider.notifier)
              .searchTvShows(_textController.text);
          currentQuery = _textController.text;
        }
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(searchNotifierProvider);
    ref.listen<Menu>(menuNotifierProvider, (previous, next) {
      if (next.page != 2) {
        ref.read(searchNotifierProvider.notifier).searchTvShows('');
      }
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: 'Search TvShows',
                  suffixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: state.when(
                  initial: () => const Center(child: Text('Type in something')),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  data: (tvShows) {
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
                            context
                                .pushRoute(TvShowDetailRoute(tvShow: tvShow));
                          },
                          child: SizedBox(
                            height: 200,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 150,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: tvShow.image.original.isEmpty
                                        ? const Image(
                                            image: AssetImage(
                                              'assets/images/no_image.png',
                                            ),
                                          )
                                        : CachedNetworkImage(
                                            imageUrl: tvShow.image.original,
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
                  },
                  error: (_) => const Center(child: Text('Error')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
