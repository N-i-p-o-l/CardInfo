import 'package:auto_route/auto_route.dart';
import 'package:card_info/presentation/screens/inputmode/input_mode_screen.dart';

export 'package:auto_route/auto_route.dart';
export 'routes.gr.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.slideRightWithFade,
  durationInMilliseconds: 200,
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: InputModeScreen, initial: true),
  ],
)

class $AppRouter {}
