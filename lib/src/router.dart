import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_router/routers/slide.dart';

Route cupertinoRoute(widget) {
  return new CupertinoPageRoute(
    builder: (BuildContext context) => widget,
    settings: new RouteSettings(
      name: widget.toStringShort(),
      isInitialRoute: false,
    ),
  );
}

Route materialRoute(widget) {
  return new MaterialPageRoute(
    builder: (BuildContext context) => widget,
    settings: new RouteSettings(
      name: widget.toStringShort(),
      isInitialRoute: false,
    ),
  );
}

Route slide(widget) {
  return SlideRightRoute(page: widget);
}
