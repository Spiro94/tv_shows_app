import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/menu.dart';

class MenuNotifier extends StateNotifier<Menu> {
  MenuNotifier() : super(_initialValue);

  /// Initial page state
  static const _initialValue = Menu(page: 0);

  /// Change page state
  void changePage(int newPage) {
    state = Menu(page: newPage);
  }

  /// Gets the actual page
  int getPage() {
    return state.page;
  }

  /// Open a new complete page
  void openNewPage(BuildContext context, PageRouteInfo page) {
    context.pushRoute(page);
  }
}
