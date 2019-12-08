import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_router/all_routes.dart';

Route enterExit(exitPage, enterPage) {
  return EnterExitRoute(enterPage: enterPage, exitPage: exitPage);
}
