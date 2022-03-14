import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tv_shows_app/core/presentation/routes/router.gr.dart';
import 'package:tv_shows_app/splash/application/splash_state.dart';
import 'package:tv_shows_app/splash/infrastructure/providers.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    Future.microtask(
        () => ref.read(splashNotifierProvider.notifier).checkPinIsSet());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<SplashState>(splashNotifierProvider, (previous, next) {
      next.maybeWhen(
        pinSet: () => context.replaceRoute(const AuthRoute()),
        pinUnset: () => context.replaceRoute(SetPinRoute()),
        orElse: () {},
      );
    });
    return const Scaffold(
      body: Image(
        height: double.infinity,
        fit: BoxFit.fitHeight,
        image: AssetImage('assets/images/tv_shows.jpg'),
      ),
    );
  }
}
