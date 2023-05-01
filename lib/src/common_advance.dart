import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_router/nav_router.dart';
import 'package:nav_router/src/enum.dart';
import 'package:nav_router/src/util.dart';

/// exitPage is generally itself
/// enter page is the page you want to enter
///
Future<dynamic> routePushAdvance({
  required Widget exitPage,
  required Widget enterPage,
  AdvanceType type = AdvanceType.slide,
}) {
  Route route =
  advanceUtil(type: type, exitPage: exitPage, enterPage: enterPage);
  if(navGK.currentState != null){
    return navGK.currentState!.push(route);
  }else{
    throw 'Current State is null';
  }
}
