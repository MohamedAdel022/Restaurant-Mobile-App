import 'dart:developer';

import 'package:flutter/material.dart';

class MyRouteObserver extends RouteObserver<PageRoute<dynamic>> {
  @override
  void didPush(Route route, Route? previousRoute) {
    log('Pushed: ${route.settings.name}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    log('Popped: ${route.settings.name}');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    log('Removed: ${route.settings.name}');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    log('Replaced: ${oldRoute?.settings.name} with ${newRoute?.settings.name}');
  }
}
