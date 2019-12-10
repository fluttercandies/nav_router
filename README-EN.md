Language: [English](README-EN.md) | [中文简体](README.md)

# nav_router

nav_router is the simplest / lightweight / convenient routing management solution for flutter. It supports various routing animations, and it is very convenient to jump / pass parameters. To jump to a new page, just routePush (NewPage ());

## Getting started

### Add dependency
```yaml
dependencies:
  nav_router: any #Specific version customization (any means latest)
```

> Related articles updated ...

Then use `flutter packages upgrade` to update flutter plugin packages

# Sample project

There is a pretty sweet example project in the example folder. Check it out. Otherwise, keep reading to get up and running.

# Setting up
*  1.Import our plugin on the page of `MaterialApp`
```dart
import 'package:nav_router/nav_router.dart';
```
*  2.Write `navGK` value in` navigatorKey` property of `MaterialApp`
```dart
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      navigatorKey: navGK,
    );
  }
```
* 3.Then, we can start using it, here is an example of a jump page
```dart
Widget buildItem(RouteModel item) {
  return new FlatButton(
    onPressed: () => routePush(new NewPage()),
    child: new Text('Click to jump'),
  );
}
```

* 4.If we want to use other routing animations to jump, we can add jump properties later, such as: gradient animation
```dart
routePush(new NewPage(), RouterType.fade);
```


# Flutter WeChat group

<img src="http://www.flutterj.com/content/uploadfile/201903/64821551854137.png" height="200" width="200" style="zoom:30%;" />

FlutterJ：www.flutterj.com

# the public
<img src="http://www.flutterj.com/public.jpg" height="200" width="200" style="zoom:30%;" />

Pay attention to the public account "`Flutter前线`", practical experience and skills of various Flutter projects, work knowledge, and answers to Flutter interview questions, waiting for you to collect them.

# Contributor

<img src="http://www.flutterj.com/circle-cropped.png" height="150" width="150" style="zoom:30%;" />