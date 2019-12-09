import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          'new Page',
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
        child: new Text(
          'This is the new page',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
