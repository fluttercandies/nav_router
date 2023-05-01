import 'package:flutter/material.dart';

/// [Route animation effect]
/// Transparent transition mode route jump animation.
///
class PositionRoute extends PageRouteBuilder {
  final Widget page;

  PositionRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              PositionedTransition(
            rect: Tween<RelativeRect>(
              begin: RelativeRect.fromLTRB(0.0, 0.0, 0.0, 10.0),
              end: RelativeRect.fromLTRB(0.0, 10.0, 0.0, 0.0),
            ).animate(
                CurvedAnimation(parent: animation, curve: Curves.bounceIn)),
            child: child,
          ),
        );
}
