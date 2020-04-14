import 'package:flutter/material.dart';

import 'package:nav_router/nav_router.dart';

class RipplePage extends StatefulWidget {
  @override
  _RipplePageState createState() => _RipplePageState();
}

class _RipplePageState extends State<RipplePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Center(
        child: NavigateButton(
          nextScreen: RipplePage(),
          color: Colors.white,
          splashColor: Colors.green,
          iconColor: Colors.black,
          heroTag: 'blue',
          rangeFactor: 2.4,
        ),
      ),
    );
  }
}
