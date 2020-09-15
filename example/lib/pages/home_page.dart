import 'dart:ui';

import 'package:nav_router/nav_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nav_router_example/pages/new_pahge.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<RouteModel> data = [
    new RouteModel('material', RouterType.material),
    new RouteModel('cupertino', RouterType.cupertino),
    new RouteModel('size', RouterType.size),
    new RouteModel('fade', RouterType.fade),
    new RouteModel('scale', RouterType.scale),
    new RouteModel('scaleBottomRight', RouterType.scaleBottomRight),
    new RouteModel('scaleTopLeft', RouterType.scaleTopLeft),
    new RouteModel('slide', RouterType.slide),
    new RouteModel('rotation', RouterType.rotation),
    new RouteModel('scaleRotate', RouterType.scaleRotate),
//    new RouteModel('routePushAdvance', RouterType.scaleRotate),
  ];

  Widget buildItem(RouteModel item) {
    return new Container(
      width: (MediaQuery.of(context).size.width - 50) / 2,
      child: new FlatButton(
        color: Color(0xfff7c672),
        padding: EdgeInsets.symmetric(vertical: 50.0),
        onPressed: () => routePush(new NewPage(), item.type),
//        onPressed: () => routePushAdvance(
//            exitPage: new MyHomePage(), enterPage: new NewPage()),
        child: new Text(
          item.name,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xfff4b050),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new SizedBox(
              height: MediaQueryData.fromWindow(window).padding.top * 2),
          new Text(
            'NavRoute',
            style: TextStyle(color: Colors.blueAccent, fontSize: 30.0),
          ),
          new SizedBox(height: 10),
          new Expanded(
            child: new SingleChildScrollView(
              child: new Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: new Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  alignment: WrapAlignment.start,
                  children: data.map(buildItem).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RouteModel {
  String name;
  RouterType type;

  RouteModel(this.name, this.type);
}
