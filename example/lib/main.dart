import 'package:flutter/material.dart';
import 'package:nav_router/nav_router.dart';
import 'package:nav_router_example/pages/home_page.dart';
import 'package:nav_router_example/pages/new_pahge.dart';
import 'package:nav_router_example/pages/param_page.dart';
import 'package:nav_router_example/ripple/ripple_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'NavRoute',
      navigatorKey: navGK,
      routes: {'new': (context) => new NewPage()},
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Color(0xfff9dc71),
      ),
      home: new MyHomePage(),
//      home: RipplePage()
//      home: new ParamPage(),
    );
  }
}
