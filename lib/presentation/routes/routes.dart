import 'package:auto_route/auto_route.dart';
import 'package:card_info/presentation/screens/screens.dart';

export 'package:auto_route/auto_route.dart';
export 'routes.gr.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.slideRightWithFade,
  durationInMilliseconds: 200,
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: InputModeScreen),
    AutoRoute(page: SettingsScreen),
    AutoRoute(page: ManualInputScreen),
    AutoRoute(page: CardInfoScreen),
  ],
)

class $AppRouter {}
