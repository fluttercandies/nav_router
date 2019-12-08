import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_router/all_routes.dart';

Route advanceSlide({exitPage, enterPage}) {
  return AdvanceSlideRoute(enterPage: enterPage, exitPage: exitPage);
}
