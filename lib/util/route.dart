import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final navGK = new GlobalKey<NavigatorState>();

Future<dynamic> routePush(Widget widget) {
  final route = new CupertinoPageRoute(
    builder: (BuildContext context) => widget,
    settings: new RouteSettings(
      name: widget.toStringShort(),
      isInitialRoute: false,
    ),
  );
  return navGK.currentState.push(route);
}

Future<dynamic> routePushName(String name) {
  return navGK.currentState.pushNamed(name);
}
