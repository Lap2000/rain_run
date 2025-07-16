import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/core.dart';
import '../models/weather_model.dart';
import '../pages/home/home_page.dart';
import '../pages/weather/weather_page.dart';
import 'router_path.dart';

part 'router.g.dart';

String? token;

@visibleForTesting
String? routerMock;

class Routers {
  Routers._() {
    $router = GoRouter(
      routes: $appRoutes,
      navigatorKey: navigatorKey,
      initialLocation: routerMock ?? RouterPath.home,
      redirect: (_, GoRouterState state) {
        return null;
      },
      observers: <NavigatorObserver>[AppNavObserver()],
    );
  }

  static final Routers ins = Routers._();
  late final GoRouter $router;
}

@TypedGoRoute<HomeRouter>(
  path: RouterPath.home,
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<WeatherRouter>(
      path: RouterPath.weather,
    ),
  ],
)
class HomeRouter extends GoRouteData with _$HomeRouter {
  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

class WeatherRouter extends GoRouteData with _$WeatherRouter {
  WeatherRouter({required this.$extra});

  final WeatherModel? $extra;
  @override
  Widget build(BuildContext context, GoRouterState state) => WeatherPage(
        weather: $extra ?? const WeatherModel(),
      );
}
