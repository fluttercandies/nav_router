import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_router/src/enum.dart';
import 'package:nav_router/src/util.dart';

/// This is the key used for route redirection.
/// It must be set in the materialApp's navigatorKey property.
///
/// example:
/// ```dart
/// class MyApp extends StatelessWidget {
///   @override
///   Widget build(BuildContext context) {
///     return new MaterialApp(
///       title: 'NavRoute',
///       navigatorKey: navGK,
///       home: new MyHomePage(),
///     );
///   }
/// }
/// ```
final navGK = new GlobalKey<NavigatorState>();

/// The direct route jump method can also directly set the route jump mode.
///
/// example:
/// routePush(NewPage(),RouterType.fade)
///
Future<dynamic> routePush(Widget page,
    [RouterType type = RouterType.cupertino]) {
  Route route = routerUtil(type: type, widget: page);
  if(navGK.currentState != null){
    return navGK.currentState!.push(route);
  }else{
    throw 'Current State is null';
  }
}

/// The route is redirected by the route name,
/// which can be used by directly passing in the route name.
///
///
/// Push a named route onto the navigator.
///
/// {@macro flutter.widgets.navigator.pushNamed}
///
/// {@macro flutter.widgets.navigator.pushNamed.arguments}
///
/// {@tool sample}
///
/// Typical usage is as follows:
///
/// ```dart
/// void _aaronBurrSir() {
///   routePushName('/nyc/1776');
/// }
/// ```
/// {@end-tool}
Future<dynamic> routePushName(String name) {
  if(navGK.currentState != null){
    return navGK.currentState!.pushNamed(name);
  }else{
    throw 'Current State is null';
  }
}

/// Whether the route can be popped out of the stack,
/// if it can be popped out, otherwise nothing is done.
///
/// Tries to pop the current route, while honoring the route's [Route.willPop]
/// state.
///
/// {@macro flutter.widgets.navigator.maybePop}
///
/// See also:
///
///  * [Form], which provides an `onWillPop` callback that enables the form
///    to veto a [pop] initiated by the app's back button.
///  * [ModalRoute], which provides a `scopedWillPopCallback` that can be used
///    to define the route's `willPop` method.
Future<dynamic> maybePop([result]) {
  if(navGK.currentState != null){
    return navGK.currentState!.maybePop(result);
  }else{
    throw 'Current State is null';
  }
}

/// The routing stack is replaced by the routing name.
///
///
/// Replace the current route of the navigator by pushing the route named
/// [routeName] and then disposing the previous route once the new route has
/// finished animating in.
///
/// {@macro flutter.widgets.navigator.pushReplacementNamed}
///
/// {@macro flutter.widgets.navigator.pushNamed.arguments}
///
/// {@tool sample}
///
/// Typical usage is as follows:
///
/// ```dart
/// void _startBike() {
///   pushReplacementNamed('/jouett/1781');
/// }
/// ```
/// {@end-tool}
Future<dynamic> pushReplacementNamed(routeName, [result]) {
  if(navGK.currentState != null){
    return navGK.currentState!.pushReplacementNamed(routeName, result: result);
  }else{
    throw 'Current State is null';
  }
}

/// Pop the current route off the navigator and push a named route in its
/// place.
///
/// {@macro flutter.widgets.navigator.popAndPushNamed}
///
/// {@macro flutter.widgets.navigator.pushNamed.arguments}
///
/// {@tool sample}
///
/// Typical usage is as follows:
///
/// ```dart
/// void _begin() {
///   popAndPushNamed('/nyc/1776');
/// }
/// ```
/// {@end-tool}
Future<dynamic> popAndPushNamed(name, [result]) {
  if(navGK.currentState != null){
    return navGK.currentState!.popAndPushNamed(name, result: result);
  }else{
    throw 'Current State is null';
  }
}

/// Push the given route onto the navigator, and then remove all the previous
/// routes until the `predicate` returns true.
///
/// {@macro flutter.widgets.navigator.pushAndRemoveUntil}
///
/// {@tool sample}
///
/// Typical usage is as follows:
///
/// ```dart
/// void _resetAndOpenPage() {
///   pushAndRemoveUntil(
///     MaterialPageRoute(builder: (BuildContext context) => MyHomePage()),
///     ModalRoute.withName('/'),
///   );
/// }
/// ```
/// {@end-tool}
Future<dynamic> pushAndRemoveUntil(Widget page,
    [RouterType type = RouterType.cupertino]) {
  Route route = routerUtil(type: type, widget: page);
  if(navGK.currentState != null){
    return navGK.currentState!.pushAndRemoveUntil(route, (Route<dynamic> route) => false);
  }else{
    throw 'Current State is null';
  }
}

///```dart
/// pushNamedAndRemoveUntil("/screen4",ModalRoute.withName('/')
/// ```
Future<dynamic> pushNamedAndRemoveUntil(String newRouteName) {
  if(navGK.currentState != null){
    return navGK.currentState!.pushNamedAndRemoveUntil(newRouteName, (Route<dynamic> route) => false);
  }else{
    throw 'Current State is null';
  }
}

/// Replace the current route of the navigator by pushing the given route and
/// then disposing the previous route once the new route has finished
/// animating in.
///
/// {@macro flutter.widgets.navigator.pushReplacement}
///
/// {@tool sample}
///
/// Typical usage is as follows:
///
/// ```dart
/// void _doOpenPage() {
///   pushReplacement(
///       MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
/// }
/// ```
/// {@end-tool}
Future<dynamic> pushReplacement(Widget page,
    [RouterType type = RouterType.cupertino]) {
  Route route = routerUtil(type: type, widget: page);
  if(navGK.currentState != null){
    return navGK.currentState!.pushReplacement(route);
  }else{
    throw 'Current State is null';
  }
}

/// Calls [pop] repeatedly until the predicate returns true.
///
/// {@macro flutter.widgets.navigator.popUntil}
///
/// {@tool sample}
///
/// Typical usage is as follows:
///
/// ```dart
/// void _doLogout() {
///   popToRootPage(ModalRoute.withName('/'));
/// }
/// ```
/// {@end-tool}
///
/// This method pops directly to the root page
void popToRootPage() {
  if(navGK.currentState != null){
    navGK.currentState!.popUntil(ModalRoute.withName('/'));
  }else{
    throw 'Current State is null';
  }
}

/// You can pop to the existing page of the routing stack.
///
void popToPage(Widget page) {
  popUntil(ModalRoute.withName(page.toStringShort()));
}

///
/// Calls [pop] repeatedly until the predicate returns true.
///
/// {@macro flutter.widgets.navigator.popUntil}
///
/// ```dart
///   popUntil(ModalRoute.withName('/login'));
/// ```
void popUntil(RoutePredicate predicate) {
  if(navGK.currentState != null){
    return navGK.currentState!.popUntil(predicate);
  }else{
    throw 'Current State is null';
  }
}

/// Immediately remove `route` from the navigator, and [Route.dispose] it.
///
/// {@macro flutter.widgets.navigator.removeRoute}
void removeRoute(Route<dynamic> route) {
  if(navGK.currentState != null){
    return navGK.currentState!.removeRoute(route);
  }else{
    throw 'Current State is null';
  }
}

/// Immediately remove a route from the navigator, and [Route.dispose] it. The
/// route to be replaced is the one below the given `anchorRoute`.
///
/// {@macro flutter.widgets.navigator.removeRouteBelow}
void removeRouteBelow(Route<dynamic> anchorRoute) {
  if(navGK.currentState != null){
    return navGK.currentState!.removeRouteBelow(anchorRoute);
  }else{
    throw 'Current State is null';
  }
}

/// Replaces a route on the navigator with a new route.
///
/// {@macro flutter.widgets.navigator.replace}
///
/// See also:
///
///  * [replaceRouteBelow], which is the same but identifies the route to be
///    removed by reference to the route above it, rather than directly.
void replaceRouter<T extends Object>(
    {required Route<dynamic> oldRoute, required Route<T> newRoute}) {
  if(navGK.currentState != null){
    return navGK.currentState!.replace(oldRoute: oldRoute, newRoute: newRoute);
  }else{
    throw 'Current State is null';
  }
}

/// Replaces a route on the navigator with a new route. The route to be
/// replaced is the one below the given `anchorRoute`.
///
/// {@macro flutter.widgets.navigator.replaceRouteBelow}
///
/// See also:
///
///  * [replace], which is the same but identifies the route to be removed
///    directly.
void replaceRouteBelow<T extends Object>(
    {required Route<dynamic> anchorRoute,required Route<T> newRoute}) {
  if(navGK.currentState != null){
    return navGK.currentState!.replaceRouteBelow(anchorRoute: anchorRoute, newRoute: newRoute);
  }else{
    throw 'Current State is null';
  }
}

/// Pop the top-most route off the navigator.
///
/// {@macro flutter.widgets.navigator.pop}
///
/// {@tool sample}
///
/// Typical usage for closing a route is as follows:
///
/// ```dart
/// void _handleClose() {
///   pop();
/// }
/// ```
/// {@end-tool}
/// {@tool sample}
pop([result]) {
  if(navGK.currentState != null){
    return navGK.currentState!.pop(result);
  }else{
    throw 'Current State is null';
  }
}

/// Whether the navigator can be popped.
///
/// {@macro flutter.widgets.navigator.canPop}
///
/// See also:
///
///  * [Route.isFirst], which returns true for routes for which [canPop]
///    returns false.
bool canPop() {
  if(navGK.currentState != null){
    return navGK.currentState!.canPop();
  }else{
    throw 'Current State is null';
  }
}
