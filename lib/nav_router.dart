import 'dart:async';

import 'package:flutter/services.dart';

class NavRouter {
  static const MethodChannel _channel =
      const MethodChannel('nav_router');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
