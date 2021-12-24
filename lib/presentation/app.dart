import 'package:card_info/common/strings.dart';
import 'package:card_info/di/di.dart';
import 'package:card_info/theme/theme.dart';
import 'package:flutter/material.dart';
import 'routes/routes.dart';

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  AppRouter get _router => getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: StringConstants.appName,
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.defaultRouteParser(),
      routerDelegate: _router.delegate(),
      theme: AppTheme.light,
    );
  }
}
