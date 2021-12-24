import 'package:card_info/di/di.dart';
import 'package:card_info/presentation/app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

Future main() async {
  await EasyLocalization.ensureInitialized();

  configureInjection(Environment.dev);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [
        Locale('en'),
      ],
      fallbackLocale: const Locale('en'),
      useFallbackTranslations: true,
      child: const App(),
    ),
  );
}
