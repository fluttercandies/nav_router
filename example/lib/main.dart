import 'package:flutter/material.dart';
import 'package:nav_router/nav_router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'nav_route',
      navigatorKey: navGK,
      routes: {
        'one': (context) {
          return PageOne();
        }
      },
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Center(
        child: new FlatButton(
//          onPressed: () => routePushName('one'),
        onPressed: () => routePush(new PageOne(),Type.slide),
          child: new Text('push test'),
        ),
      ),
    );
  }
}

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('OnePage'),
        backgroundColor: Colors.green,
      ),
    );
  }
}
