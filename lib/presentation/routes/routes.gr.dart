// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../screens/screens.dart' as _i2;
import '../screens/splash/splash_screen.dart' as _i1;
import 'routes.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashScreen(),
          transitionsBuilder: _i5.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    InputModeRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.InputModeScreen(),
          transitionsBuilder: _i5.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    ManualInputRoute.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.ManualInputScreen(),
          transitionsBuilder: _i5.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(SplashRoute.name, path: '/'),
        _i3.RouteConfig(InputModeRoute.name, path: '/input-mode-screen'),
        _i3.RouteConfig(ManualInputRoute.name, path: '/manual-input-screen')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i3.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.InputModeScreen]
class InputModeRoute extends _i3.PageRouteInfo<void> {
  const InputModeRoute()
      : super(InputModeRoute.name, path: '/input-mode-screen');

  static const String name = 'InputModeRoute';
}

/// generated route for
/// [_i2.ManualInputScreen]
class ManualInputRoute extends _i3.PageRouteInfo<void> {
  const ManualInputRoute()
      : super(ManualInputRoute.name, path: '/manual-input-screen');

  static const String name = 'ManualInputRoute';
}
