Language: [English](README.md) | [中文简体](README_ZH.md)

[![GitHub stars](https://img.shields.io/github/stars/fluttercandies/nav_router)](https://github.com/fluttercandies/nav_router/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/fluttercandies/nav_router)](https://github.com/fluttercandies/nav_router/network)
[![GitHub issues](https://img.shields.io/github/issues/fluttercandies/nav_router)](https://github.com/fluttercandies/nav_router/issues) 

> 如果产生其他依赖无法编译的问题，可以尝试将`pubspec.yaml`中的`dependencies`中的所有依赖的"^"去掉，重新编译尝试。
> 还是出错的话在项目主目录执行`flutter clean`再重新运行。
> 如果出现插件版本不适配记得看`pubspec.yaml`文件介绍的插件flutter版本是否与自己本地Flutter适配。

# nav_router

flutter最简单/轻量/便捷的路由管理方案，支持各种路由动画，跳转/传参起来非常方便，跳转新页面只需：routePush(NewPage());

# Log
* 2020.07.04 - 测试Flutter 1.17.3

* 2020.06.03 - 取消pop默认空字符串数据

* 2020.02.28 - 修复dev分支flutter的Pop方法出错。

## 开始使用

### 添加依赖
```yaml
dependencies:
  nav_router: any #具体版本自定义（any表示最新）
```

> 相关文章更新中..

然后使用`flutter packages upgrade`来更新flutter的插件包

# 示例项目
example文件夹中有一个非常漂亮的示例项目。看看这个。否则，请继续阅读以启动并运行。

# 配置
*  1.在`MaterialApp`的页面先导入我们的插件
```dart
import 'package:nav_router/nav_router.dart';
```
*  2.在`MaterialApp`的`navigatorKey`属性写上`navGK`值
```dart
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      navigatorKey: navGK,
    );
  }
```
* 3.然后，我们就可以开始使用啦，下面是一个跳转页面的例子
```dart
Widget buildItem(RouteModel item) {
  return new FlatButton(
    onPressed: () => routePush(new NewPage()),
    child: new Text('点击跳转'),
  );
} 
```

* 4.如果我们想用其他路由动画跳转可以在后面添加跳转属性,比如：渐变动画
```dart
routePush(new NewPage(), RouterType.fade);
```

# 参数传递

## 方式1：
正常push新页面，但是在后面加上Then，后面的v就是我们跳转之后的页面带回来的数据，然后我们给它打印出来。
```dart
routePush(NewPage()).then((v) {
  print('I received::$v');
});
```
那么我们新页面就要pop返回值了，直接在pop然后括号里加上我们的参数，可以是任何类型的参数值，之后上面写的东西就能接收到我们这次返回并带过去的参数了。
```dart
FlatButton(
  onPressed: () {
    pop('This is the parameter');
  },
  child: Text('Return with parameters'),
),
```

## 方式2：
方式二可以用我们的NavData，先在我们要push到的页面添加NavData类型的参数接收,
```dart
class NewPage extends StatlessWidget {
  final NavData navData;

  NewPage({this.navData});
}
```
然后下面就判断这个navData是否为空，也就是上级是否有接收这个方法，如果有的话就带参数返回。
```dart
FlatButton(
  onPressed: () {
    if(navData == null) return;
    widget.navData('NavData mode parameter transmission');
    pop();
  },
  child: Text('Return with parameters'),
),
```
那么我们push的那个地方就可以用navData来接收值并且打印出来了。
```dart
routePush(NewPage(navData: (v) {
    print('I received::$v');
  }),
);
```

# 效果图 [图片不能显示点我](http://img.flutterj.com/nav_router/)
|![1.gif](git/1.gif)| ![2.gif](git/2.gif) | ![3.gif](git/3.gif)|
| --- | --- | --- |
|![4.gif](git/4.gif)| ![5.gif](git/5.gif) | ![6.gif](git/6.gif)|
|![7.gif](git/7.gif)| ![8.gif](git/8.gif) | ![9.gif](git/9.gif)|
|![10.gif](git/10.gif)| ![11.gif](git/11.gif) | ![12.gif](git/12.gif)|

# Flutter微信群

<img src="git/left_group.png" height="200" width="210" style="zoom:30%;" />

[上图无法显示点我](http://www.flutterj.com/left_group.png)

Flutter教程网：www.flutterj.com

Flutter交流QQ群：[874592746](https://jq.qq.com/?_wv=1027&k=5coTYqE)

# 公众号
<img src="git/public.jpg" height="200" width="200" style="zoom:30%;" />

关注公众号“`Flutter前线`”，各种Flutter项目实战经验技巧，干活知识，Flutter面试题答案，等你来领取。

# 贡献者

<img src="git/circle-cropped.png" height="150" width="150" style="zoom:30%;" />

### LICENSE
```
fluttercandies/nav_router is licensed under the
Apache License 2.0

A permissive license whose main conditions require preservation of copyright and license notices. 
Contributors provide an express grant of patent rights. 
Licensed works, modifications, and larger works may be distributed under different terms and without source code.
```
