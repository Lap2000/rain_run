// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRouter,
    ];

RouteBase get $homeRouter => GoRouteData.$route(
      path: '/',
      factory: _$HomeRouter._fromState,
      routes: [
        GoRouteData.$route(
          path: 'weather',
          factory: _$WeatherRouter._fromState,
        ),
      ],
    );

mixin _$HomeRouter on GoRouteData {
  static HomeRouter _fromState(GoRouterState state) => HomeRouter();

  @override
  String get location => GoRouteData.$location(
        '/',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$WeatherRouter on GoRouteData {
  static WeatherRouter _fromState(GoRouterState state) => WeatherRouter();

  @override
  String get location => GoRouteData.$location(
        '/weather',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
