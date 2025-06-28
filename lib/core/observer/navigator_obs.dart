import 'dart:developer';

import 'package:flutter/material.dart';

class AppNavObserver extends NavigatorObserver {
  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('========= didPop ===== ${route.settings.name ?? '--'}');
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('========= didPush ===== ${route.settings.name ?? '--'}');
    super.didPush(route, previousRoute);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('========= didRemove ===== ${route.settings.name ?? '--'}');
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    log('========= didReplace ===== ${newRoute?.settings.name ?? '--'}');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}
