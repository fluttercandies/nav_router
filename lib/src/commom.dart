import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_router/src/enum.dart';
import 'package:nav_router/src/util.dart';

final navGK = new GlobalKey<NavigatorState>();

Future<dynamic> routePush(Widget page,
    [RouterType type = RouterType.cupertino]) {
  Route route = routerUtil(type: type, widget: page);
  return navGK.currentState.push(route);
}

Future<dynamic> routePushName(String name) {
  return navGK.currentState.pushNamed(name);
}

Future<dynamic> pushAndRemoveUntil(Widget page,
    [RouterType type = RouterType.cupertino]) {
  Route route = routerUtil(type: type, widget: page);
  return navGK.currentState
      .pushAndRemoveUntil(route, (Route<dynamic> route) => false);
}

Future<dynamic> pushReplacement(Widget page,
    [RouterType type = RouterType.cupertino]) {
  Route route = routerUtil(type: type, widget: page);
  return navGK.currentState.pushReplacement(route);
}


void popToRootPage() {
  navGK.currentState.popUntil(ModalRoute.withName('/'));
}