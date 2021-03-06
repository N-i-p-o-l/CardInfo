import 'package:card_info/common/strings.dart';
import 'package:card_info/di/di.dart';
import 'package:card_info/presentation/screens/settings/provider/settings_notifier.dart';
import 'package:card_info/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routes/routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  AppRouter get _router => getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingsNotifier(),
      child: Consumer<SettingsNotifier>(
        builder: (context, SettingsNotifier notifier, child) {
          return MaterialApp.router(
            title: StringConstants.appName,
            debugShowCheckedModeBanner: false,
            locale: context.locale,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            routeInformationParser: _router.defaultRouteParser(),
            routerDelegate: _router.delegate(),
            theme: notifier.darkMode ? AppThemes.darkTheme : AppThemes.lightTheme,
          );
        },
      ),
    );
  }
}
