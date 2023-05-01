import 'package:flutter/material.dart';
import 'package:nav_router/all_routes.dart';
import 'package:nav_router/src/enum.dart';

/// This function is a wrapper for the route jump animation.
/// You can directly pass an enumeration method and the page uses this method.
///
/// example:
/// ```dart
/// routerUtil(type: RouterType.material, widget: NewPage());
/// ```
///
Route routerUtil({RouterType type = RouterType.material, widget}) {
  Route route;
  switch (type) {
    case RouterType.material:
      route = materialRoute(widget);
      break;
    case RouterType.cupertino:
      route = cupertinoRoute(widget);
      break;
    case RouterType.slide:
      route = slide(widget);
      break;
    case RouterType.scale:
      route = scale(widget);
      break;
    case RouterType.rotation:
      route = rotation(widget);
      break;
    case RouterType.size:
      route = size(widget);
      break;
    case RouterType.fade:
      route = fade(widget);
      break;
    case RouterType.scaleRotate:
      route = scaleRotate(widget);
      break;
    case RouterType.scaleBottomRight:
      route = scale(widget, Alignment.bottomRight);
      break;
    case RouterType.scaleTopLeft:
      route = scale(widget, Alignment.topLeft);
      break;
  }

  return route;
}

/// It's the same as above, but this is an advanced usage,
/// you need to pass in the exit page and the data to enter the page.
///
/// example:
/// ```dart
/// advanceUtil(type: AdvanceType.slide, exitPage: ExitPage(),enterPage: EnterPagePage());
/// ```
Route advanceUtil({AdvanceType type = AdvanceType.slide, exitPage, enterPage}) {
  Route route;
  switch (type) {
    case AdvanceType.slide:
      route = advanceSlide(exitPage: exitPage, enterPage: enterPage);
      break;
  }

  return route;
}
