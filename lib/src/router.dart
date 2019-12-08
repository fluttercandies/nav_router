import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
