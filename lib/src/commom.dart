import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_router/src/router.dart';

enum Type {
  material,
  cupertino,
  slide,
}

final navGK = new GlobalKey<NavigatorState>();

Future<dynamic> routePush(Widget widget,
    [Type type = Type.cupertino]) {
  Route route;
  switch (type) {
    case Type.material:
      route = materialRoute(widget);
      break;
    case Type.cupertino:
      route = cupertinoRoute(widget);
      break;
    case Type.slide:
      route = slide(widget);
      break;
  }
  return navGK.currentState.push(route);
}

Future<dynamic> routePushName(String name) {
  return navGK.currentState.pushNamed(name);
}
