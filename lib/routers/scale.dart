import 'package:flutter/material.dart';

/// [Route animation effect]
/// Zoom mode route jump animation.
///
class ScaleRoute extends PageRouteBuilder {
  final Widget page;
  final Alignment alignment;

  ScaleRoute({required this.page, this.alignment = Alignment.center})
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
              ScaleTransition(
            alignment: alignment,
            scale: Tween<double>(
              begin: 0.0,
              end: 1.0,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.fastOutSlowIn,
              ),
            ),
            child: child,
          ),
        );
}
