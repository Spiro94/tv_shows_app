import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tv_shows_app/core/presentation/routes/router.gr.dart';

import '../../../core/domain/tv_show.dart';

class BuilderWidget extends StatelessWidget {
  const BuilderWidget({
    Key? key,
    required this.scrollController,
    required this.tvShows,
    this.isLoading = false,
    this.errorOcurred = false,
    this.errorMessage = '',
  }) : super(key: key);

  final ScrollController scrollController;
  final List<TvShow> tvShows;
  final bool isLoading;
  final bool errorOcurred;
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: scrollController,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 1 / 2,
        maxCrossAxisExtent: 100,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: tvShows.length + (isLoading ? 5 : 0) + (errorOcurred ? 1 : 0),
      itemBuilder: (context, index) {
        if (index >= tvShows.length) {
          if (isLoading) {
            return Shimmer.fromColors(
              child: SizedBox(
                height: 200,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        width: 100,
                        height: 150,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
            );
          } else if (errorOcurred) {
            return const Text('Error obtaining data');
          } else {
            return const SizedBox();
          }
        } else {
          final tvShow = tvShows[index];
          return GestureDetector(
            onTap: () {
              context.pushRoute(TvShowDetailRoute(tvShow: tvShow));
            },
            child: SizedBox(
              height: 200,
              child: Column(
                children: [
                  Hero(
                    tag: 'tagImage${tvShow.id}',
                    child: SizedBox(
                      width: 100,
                      height: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: tvShow.image.original.isEmpty
                            ? const Image(
                                image: AssetImage('assets/images/no_image.png'),
                              )
                            : CachedNetworkImage(
                                imageUrl: tvShow.image.original,
                              ),
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
        }
      },
    );
  }
}
