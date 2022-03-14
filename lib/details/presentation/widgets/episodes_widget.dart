import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/domain/episode.dart';
import '../../../core/presentation/routes/router.gr.dart';

class EpisodesWidget extends StatefulWidget {
  const EpisodesWidget({
    Key? key,
    required this.episodes,
  }) : super(key: key);

  final Map<int, List<Episode>> episodes;

  @override
  State<EpisodesWidget> createState() => _EpisodesWidgetState();
}

class _EpisodesWidgetState extends State<EpisodesWidget> {
  late int seasonSelected;
  late List<Episode> episodesToShow;
  late ScrollController _scrollController;
  @override
  void initState() {
    seasonSelected = widget.episodes.keys.first;
    episodesToShow = widget.episodes[seasonSelected]!;
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: 100,
            child: DropdownButton<int>(
              value: seasonSelected,
              isExpanded: true,
              items: widget.episodes.keys
                  .map(
                    (key) => DropdownMenuItem(
                      child: Text('Season $key'),
                      value: key,
                    ),
                  )
                  .toList(),
              onChanged: (item) {
                setState(() {
                  seasonSelected = item!;
                  episodesToShow = widget.episodes[seasonSelected]!;
                  _scrollController.animateTo(0,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                });
              },
            ),
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.separated(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: episodesToShow.length,
            separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
            itemBuilder: (context, index) {
              final episode = episodesToShow[index];

              return SizedBox(
                width: 100,
                child: GestureDetector(
                  onTap: () {
                    context.pushRoute(EpisodeDetailRoute(episode: episode));
                  },
                  child: Column(
                    children: [
                      Hero(
                        tag: episode.id,
                        child: SizedBox(
                          height: 80,
                          child: episode.image.original.isEmpty
                              ? const Image(
                                  image:
                                      AssetImage('assets/images/no_image.png'),
                                )
                              : CachedNetworkImage(
                                  imageUrl: episode.image.original),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Flexible(
                        child: ClipRect(
                          child: Text(
                            'Episode ${episode.number}: ${episode.name}',
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyText1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
