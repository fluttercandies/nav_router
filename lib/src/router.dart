import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_router/all_routes.dart';

/// Creates a page route for use in an iOS designed app.
///
/// The [builder], [maintainState], and [fullscreenDialog] arguments must not
/// be null.
///
Route cupertinoRoute(widget) {
  return new CupertinoPageRoute(
    builder: (BuildContext context) => widget,
    settings: new RouteSettings(
      name: widget.toStringShort(),
    ),
  );
}

/// Construct a MaterialPageRoute whose contents are defined by [builder].
///
/// The values of [builder], [maintainState], and [fullScreenDialog] must not
/// be null.
///
Route materialRoute(widget) {
  return new MaterialPageRoute(
    builder: (BuildContext context) => widget,
    settings: new RouteSettings(
      name: widget.toStringShort(),
    ),
  );
}

/// [Route animation effect]
/// Swipe right to route the jump animation.
///
Route slide(widget) {
  return SlideRightRoute(page: widget);
}

/// [Route animation effect]
/// Zoom mode route jump animation.
Route scale(widget, [align]) {
  return ScaleRoute(page: widget, alignment: align);
}

/// [Route animation effect]
/// Rotation mode route jump animation.
///
Route rotation(widget) {
  return RotationRoute(page: widget);
}

/// [Route animation effect]
/// Size mode route jump animation.
///
Route size(widget) {
  return SizeRoute(page: widget);
}

/// [Route animation effect]
/// Transparent transition mode route jump animation.
///
Route fade(widget) {
  return FadeRoute(page: widget);
}

/// [Route animation effect]
/// Zoom and rotate mode route jump animation.
///
Route scaleRotate(widget) {
  return ScaleRotateRoute(page: widget);
}
