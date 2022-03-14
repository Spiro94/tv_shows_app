import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../core/domain/episode.dart';

class EpisodeDetailPage extends StatelessWidget {
  const EpisodeDetailPage({Key? key, required this.episode}) : super(key: key);

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView(
            children: [
              Text(
                episode.name,
                style: theme.textTheme.headline3,
                textAlign: TextAlign.center,
              ),
              Text(
                'S${episode.season}E${episode.number}',
                style: theme.textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Hero(
                tag: episode.id,
                child: episode.image.original.isEmpty
                    ? const Image(
                        image: AssetImage('assets/images/no_image.png'),
                      )
                    : CachedNetworkImage(
                        imageUrl: episode.image.original,
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
              ),
              const SizedBox(
                height: 20,
              ),
              if (episode.summary.isEmpty)
                Text(
                  'No description',
                  style: theme.textTheme.headline4,
                  textAlign: TextAlign.center,
                )
              else
                Column(
                  children: [
                    Text(
                      'Description',
                      style: theme.textTheme.headline4,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              Html(
                data: episode.summary,
                style: {
                  'p': Style(
                    textAlign: TextAlign.justify,
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                  ),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
