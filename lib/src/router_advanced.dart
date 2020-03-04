import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_router/all_routes.dart';

/// This is an advanced usage of sliding routing.
/// Others can be added later.
/// Currently only this one is available.
///
Route advanceSlide({exitPage, enterPage}) {
  return AdvanceSlideRoute(enterPage: enterPage, exitPage: exitPage);
}
