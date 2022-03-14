import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/core/shared/providers.dart';
import 'package:tv_shows_app/splash/application/splash_notifier.dart';
import 'package:tv_shows_app/splash/application/splash_state.dart';

final splashNotifierProvider =
    StateNotifierProvider<SplashNotifier, SplashState>((ref) {
  return SplashNotifier(ref.watch(coreRepositoryProvider));
});
