import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nav_router/nav_router.dart';
import 'package:nav_router_example/pages/home_page.dart';
import 'package:nav_router_example/widget/show_toast.dart';

class ParamPage extends StatefulWidget {
  @override
  _ParamPageState createState() => _ParamPageState();
}

class _ParamPageState extends State<ParamPage> {
  List<RouteModel> data = [
    new RouteModel('Parameter jump', RouterType.cupertino),
    new RouteModel('NavData jump', RouterType.cupertino),
  ];

  Widget buildItem(RouteModel item) {
    return new Container(
      width: (MediaQuery.of(context).size.width - 50) / 2,
      child: new FlatButton(
        color: Color(0xfff7c672),
        padding: EdgeInsets.symmetric(vertical: 50.0),
        onPressed: () {
          if (item.name == 'Parameter jump') {
            routePush(new ReturnParamPage()).then((v) {
              showToast(context, 'I received::$v');
            });
          } else {
            routePush(new ReturnParamPage(navData: (v) {
              showToast(context, 'I received::$v');
            }));
          }
        },
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
          new SizedBox(height: 20.0),
          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: new Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              alignment: WrapAlignment.start,
              children: data.map(buildItem).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class ReturnParamPage extends StatefulWidget {
  final NavData navData;

  ReturnParamPage({this.navData});

  @override
  _ReturnParamPageState createState() => _ReturnParamPageState();
}

class _ReturnParamPageState extends State<ReturnParamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          'param Page',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xfff9dc71),
        elevation: 0,
        leading: new InkWell(
          child: new Icon(CupertinoIcons.back, color: Colors.black),
          onTap: () => Navigator.of(context).pop(),
        ),
      ),
      body: new Container(
        color: Color(0xfff9dc71),
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: new Container(
          width: (MediaQuery.of(context).size.width - 50) / 2,
          child: new FlatButton(
            color: Color(0xfff7c672),
            padding: EdgeInsets.symmetric(vertical: 50.0),
            highlightColor: Color(0xfff4b050),
            onPressed: () {
              if (widget.navData != null) {
                widget.navData('NavData mode parameter transmission');
                pop();
              } else {
                pop('This is the parameter');
              }
            },
            child: new Text(
              'Return with parameters',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
