import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/core/infrastructure/core_local_service.dart';

import '../application/menu_notifier.dart';
import '../domain/menu.dart';
import '../infrastructure/core_repository.dart';
import '../infrastructure/core_service.dart';

final dioProvider = Provider((ref) => Dio());

final menuNotifierProvider = StateNotifierProvider<MenuNotifier, Menu>(
  (ref) => MenuNotifier(),
);

final coreRepositoryProvider = Provider<CoreRepository>((ref) {
  return CoreRepository(
    ref.watch(coreServiceProvider),
    ref.watch(coreLocalServiceProvider),
  );
});

final coreServiceProvider = Provider<CoreService>((ref) {
  return CoreService(ref.watch(dioProvider));
});

final coreLocalServiceProvider = Provider<CoreLocalService>((ref) {
  return CoreLocalService();
});
