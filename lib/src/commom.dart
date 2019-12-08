import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_router/src/router.dart';

enum TransitionType {
  material,
  cupertino,
}

final navGK = new GlobalKey<NavigatorState>();

Future<dynamic> routePush(Widget widget,
    [TransitionType type = TransitionType.cupertino]) {
  Route route;
  switch (type) {
    case TransitionType.material:
      route = materialRoute(widget);
      break;
    case TransitionType.cupertino:
      route = cupertinoRoute(widget);
      break;
  }
  return navGK.currentState.push(route);
}

Future<dynamic> routePushName(String name) {
  return navGK.currentState.pushNamed(name);
}
