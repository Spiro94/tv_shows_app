import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/domain/person.dart';
import '../../core/presentation/routes/router.gr.dart';
import '../../people/infrastructure/providers.dart';

class PersonDetailPage extends ConsumerStatefulWidget {
  const PersonDetailPage({Key? key, required this.person}) : super(key: key);

  final Person person;

  @override
  ConsumerState<PersonDetailPage> createState() => _PersonDetailPageState();
}

class _PersonDetailPageState extends ConsumerState<PersonDetailPage> {
  @override
  void initState() {
    Future.microtask(() => ref
        .read(participationNotifierProvider.notifier)
        .getParticipations(widget.person.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView(
            children: [
              Hero(
                tag: widget.person.id,
                child: widget.person.image.original.isEmpty
                    ? const Image(
                        image: AssetImage('assets/images/no_image.png'),
                      )
                    : CachedNetworkImage(
                        imageUrl: widget.person.image.original,
                        height: 300,
                        fit: BoxFit.contain,
                      ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.person.name,
                style: theme.textTheme.headline3,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Consumer(
                builder: (context, ref, child) {
                  final state = ref.watch(participationNotifierProvider);

                  return state.maybeWhen(
                      data: (tvShows) {
                        if (tvShows.isEmpty) {
                          return const SizedBox();
                        }
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Participations',
                              style: theme.textTheme.headline5!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 300,
                              child: ListView.builder(
                                itemCount: tvShows.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final tvShow = tvShows[index];
                                  return Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: GestureDetector(
                                      onTap: () {
                                        context.pushRoute(
                                            TvShowDetailRoute(tvShow: tvShow));
                                      },
                                      child: SizedBox(
                                        height: 200,
                                        width: 100,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              width: 100,
                                              height: 150,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: tvShow
                                                        .image.original.isEmpty
                                                    ? const Image(
                                                        image: AssetImage(
                                                            'assets/images/no_image.png'),
                                                      )
                                                    : CachedNetworkImage(
                                                        imageUrl: tvShow
                                                            .image.original,
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
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        );
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
