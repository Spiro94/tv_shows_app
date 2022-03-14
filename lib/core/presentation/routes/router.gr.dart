// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../../auth/presentation/auth_page.dart' as _i2;
import '../../../auth/presentation/set_pin_page.dart' as _i3;
import '../../../details/presentation/episode_detail_page.dart' as _i6;
import '../../../details/presentation/person_detail_page.dart' as _i8;
import '../../../details/presentation/tv_show_detail_page.dart' as _i5;
import '../../../search/presentation/search_tv_shows_page.dart' as _i7;
import '../../../splash/presentation/splash_page.dart' as _i1;
import '../../domain/episode.dart' as _i12;
import '../../domain/person.dart' as _i13;
import '../../domain/tv_show.dart' as _i11;
import '../menu_page.dart' as _i4;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    AuthRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthPage());
    },
    SetPinRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SetPinPage());
    },
    MenuRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.MenuPage());
    },
    TvShowDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TvShowDetailRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.TvShowDetailPage(key: args.key, tvShow: args.tvShow));
    },
    EpisodeDetailRoute.name: (routeData) {
      final args = routeData.argsAs<EpisodeDetailRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.EpisodeDetailPage(key: args.key, episode: args.episode));
    },
    SearchTvShowsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SearchTvShowsPage());
    },
    PersonDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PersonDetailRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.PersonDetailPage(key: args.key, person: args.person));
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(SplashRoute.name, path: '/'),
        _i9.RouteConfig(AuthRoute.name, path: '/auth-page'),
        _i9.RouteConfig(SetPinRoute.name, path: '/set-pin-page'),
        _i9.RouteConfig(MenuRoute.name, path: '/menu-page'),
        _i9.RouteConfig(TvShowDetailRoute.name, path: '/tv-show-detail-page'),
        _i9.RouteConfig(EpisodeDetailRoute.name, path: '/episode-detail-page'),
        _i9.RouteConfig(SearchTvShowsRoute.name, path: '/search-tv-shows-page'),
        _i9.RouteConfig(PersonDetailRoute.name, path: '/person-detail-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i9.PageRouteInfo<void> {
  const AuthRoute() : super(AuthRoute.name, path: '/auth-page');

  static const String name = 'AuthRoute';
}

/// generated route for
/// [_i3.SetPinPage]
class SetPinRoute extends _i9.PageRouteInfo<void> {
  const SetPinRoute() : super(SetPinRoute.name, path: '/set-pin-page');

  static const String name = 'SetPinRoute';
}

/// generated route for
/// [_i4.MenuPage]
class MenuRoute extends _i9.PageRouteInfo<void> {
  const MenuRoute() : super(MenuRoute.name, path: '/menu-page');

  static const String name = 'MenuRoute';
}

/// generated route for
/// [_i5.TvShowDetailPage]
class TvShowDetailRoute extends _i9.PageRouteInfo<TvShowDetailRouteArgs> {
  TvShowDetailRoute({_i10.Key? key, required _i11.TvShow tvShow})
      : super(TvShowDetailRoute.name,
            path: '/tv-show-detail-page',
            args: TvShowDetailRouteArgs(key: key, tvShow: tvShow));

  static const String name = 'TvShowDetailRoute';
}

class TvShowDetailRouteArgs {
  const TvShowDetailRouteArgs({this.key, required this.tvShow});

  final _i10.Key? key;

  final _i11.TvShow tvShow;

  @override
  String toString() {
    return 'TvShowDetailRouteArgs{key: $key, tvShow: $tvShow}';
  }
}

/// generated route for
/// [_i6.EpisodeDetailPage]
class EpisodeDetailRoute extends _i9.PageRouteInfo<EpisodeDetailRouteArgs> {
  EpisodeDetailRoute({_i10.Key? key, required _i12.Episode episode})
      : super(EpisodeDetailRoute.name,
            path: '/episode-detail-page',
            args: EpisodeDetailRouteArgs(key: key, episode: episode));

  static const String name = 'EpisodeDetailRoute';
}

class EpisodeDetailRouteArgs {
  const EpisodeDetailRouteArgs({this.key, required this.episode});

  final _i10.Key? key;

  final _i12.Episode episode;

  @override
  String toString() {
    return 'EpisodeDetailRouteArgs{key: $key, episode: $episode}';
  }
}

/// generated route for
/// [_i7.SearchTvShowsPage]
class SearchTvShowsRoute extends _i9.PageRouteInfo<void> {
  const SearchTvShowsRoute()
      : super(SearchTvShowsRoute.name, path: '/search-tv-shows-page');

  static const String name = 'SearchTvShowsRoute';
}

/// generated route for
/// [_i8.PersonDetailPage]
class PersonDetailRoute extends _i9.PageRouteInfo<PersonDetailRouteArgs> {
  PersonDetailRoute({_i10.Key? key, required _i13.Person person})
      : super(PersonDetailRoute.name,
            path: '/person-detail-page',
            args: PersonDetailRouteArgs(key: key, person: person));

  static const String name = 'PersonDetailRoute';
}

class PersonDetailRouteArgs {
  const PersonDetailRouteArgs({this.key, required this.person});

  final _i10.Key? key;

  final _i13.Person person;

  @override
  String toString() {
    return 'PersonDetailRouteArgs{key: $key, person: $person}';
  }
}
