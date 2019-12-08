import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_router/src/enum.dart';
import 'package:nav_router/src/util.dart';

final navGK = new GlobalKey<NavigatorState>();

Future<dynamic> routePush(Widget widget,
    [RouterType type = RouterType.cupertino]) {
  Route route = routerUtil(type: type, widget: widget);
  return navGK.currentState.push(route);
}

Future<dynamic> routePushAdvance(Widget widget,
    [RouterType type = RouterType.cupertino]) {
  Route route = routerUtil(type: type, widget: widget);
  return navGK.currentState.push(route);
}

Future<dynamic> routePushName(String name) {
  return navGK.currentState.pushNamed(name);
}
