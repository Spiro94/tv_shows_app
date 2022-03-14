import 'package:auto_route/auto_route.dart';

import '../../../auth/presentation/auth_page.dart';
import '../../../auth/presentation/set_pin_page.dart';
import '../../../details/presentation/episode_detail_page.dart';
import '../../../details/presentation/person_detail_page.dart';
import '../../../details/presentation/tv_show_detail_page.dart';
import '../../../search/presentation/search_tv_shows_page.dart';
import '../../../splash/presentation/splash_page.dart';
import '../menu_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: AuthPage),
    AutoRoute(page: SetPinPage),
    AutoRoute(page: MenuPage),
    AutoRoute(page: TvShowDetailPage),
    AutoRoute(page: EpisodeDetailPage),
    AutoRoute(page: SearchTvShowsPage),
    AutoRoute(page: PersonDetailPage),
  ],
)
class $AppRouter {}
