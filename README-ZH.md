Language: [English](README.md) | [中文简体](README-ZH.md)

# nav_router

flutter最简单/轻量/便捷的路由管理方案，支持各种路由动画，跳转/传参起来非常方便，跳转新页面只需：routePush(NewPage());


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


# Flutter微信群

<img src="http://www.flutterj.com/content/uploadfile/201903/64821551854137.png" height="200" width="200" style="zoom:30%;" />

Flutter教程网：www.flutterj.com

# 公众号
<img src="http://www.flutterj.com/public.jpg" height="200" width="200" style="zoom:30%;" />

关注公众号“`Flutter前线`”，各种Flutter项目实战经验技巧，干活知识，Flutter面试题答案，等你来领取。

# 贡献者

<img src="http://www.flutterj.com/circle-cropped.png" height="150" width="150" style="zoom:30%;" />