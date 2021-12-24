// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../screens/input_mode_screen.dart' as _i1;
import 'routes.dart' as _i4;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    InputModeRoute.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.InputModeScreen(),
          transitionsBuilder: _i4.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i2.RouteConfig> get routes =>
      [_i2.RouteConfig(InputModeRoute.name, path: '/')];
}

/// generated route for [_i1.InputModeScreen]
class InputModeRoute extends _i2.PageRouteInfo<void> {
  const InputModeRoute() : super(name, path: '/');

  static const String name = 'InputModeRoute';
}
