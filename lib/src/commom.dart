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

Future<dynamic> maybePop([result]) {
  return navGK.currentState.maybePop(result ?? '');
}

Future<dynamic> pushReplacementNamed(routeName, [result]) {
  return navGK.currentState
      .pushReplacementNamed(routeName, result: result ?? '');
}

Future<dynamic> popAndPushNamed(name, [result]) {
  return navGK.currentState.popAndPushNamed(name, result: result ?? '');
}

Future<dynamic> pushAndRemoveUntil(Widget page,
    [RouterType type = RouterType.cupertino]) {
  Route route = routerUtil(type: type, widget: page);
  return navGK.currentState
      .pushAndRemoveUntil(route, (Route<dynamic> route) => false);
}

Future<dynamic> pushNamedAndRemoveUntil(String newRouteName) {
  return navGK.currentState
      .pushNamedAndRemoveUntil(newRouteName, (Route<dynamic> route) => false);
}

Future<dynamic> pushReplacement(Widget page,
    [RouterType type = RouterType.cupertino]) {
  Route route = routerUtil(type: type, widget: page);
  return navGK.currentState.pushReplacement(route);
}

void popToRootPage() {
  navGK.currentState.popUntil(ModalRoute.withName('/'));
}

/// ```dart
///   popUntil(ModalRoute.withName('/login'));
/// ```
void popUntil(RoutePredicate predicate) {
  return navGK.currentState.popUntil(predicate);
}

void removeRoute(Route<dynamic> route) {
  return navGK.currentState.removeRoute(route);
}

void removeRouteBelow(Route<dynamic> anchorRoute) {
  return navGK.currentState.removeRouteBelow(anchorRoute);
}

void replaceRouter<T extends Object>(
    {@required Route<dynamic> oldRoute, @required Route<T> newRoute}) {
  return navGK.currentState.replace(oldRoute: oldRoute, newRoute: newRoute);
}

bool pop([result]) {
  return navGK.currentState.pop(result ?? '');
}

bool canPop() {
  return navGK.currentState.canPop();
}
