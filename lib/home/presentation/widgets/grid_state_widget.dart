import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/providers.dart';
import 'builder_widget.dart';

class GridStateWidget extends ConsumerStatefulWidget {
  const GridStateWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<GridStateWidget> createState() => _GridStateWidgetState();
}

class _GridStateWidgetState extends ConsumerState<GridStateWidget> {
  late ScrollController _scrollController;
  int page = 1;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        double maxScroll = _scrollController.position.maxScrollExtent;
        double currentScroll = _scrollController.position.pixels;
        double delta = 100.0;

        if (maxScroll - currentScroll <= delta) {
          ref
              .read(homeSeriesNotifierProvider.notifier)
              .getTvShows(page: ++page);
        }
      });

    Future.microtask(() =>
        ref.read(homeSeriesNotifierProvider.notifier).getTvShows(page: page));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeSeriesNotifierProvider);
    return state.maybeWhen(
        data: (tvShows, hasMore) {
          return BuilderWidget(
              tvShows: tvShows, scrollController: _scrollController);
        },
        loading: (tvShows) {
          return BuilderWidget(
            tvShows: tvShows,
            scrollController: _scrollController,
            isLoading: true,
          );
        },
        error: (failure, tvShows) {
          return BuilderWidget(
            tvShows: tvShows,
            scrollController: _scrollController,
            errorOcurred: true,
            errorMessage: failure.message,
          );
        },
        orElse: () => const SizedBox());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
