/*
 * nav_router
 * Created by CrazyQ1
 * https://www.flutterj.com
 *
 * Copyright (c) 2019 CrazyQ1. All rights reserved.
 * See LICENSE for distribution and usage details.
 */
library nav_router;

export 'package:nav_router/src/commom.dart';
export 'package:nav_router/src/enum.dart';
export 'package:nav_router/src/common_advance.dart';
export 'package:nav_router/ripple/ripple_router.dart';
export 'package:nav_router/ripple/navigate_button.dart';

/// This is a callback for passing data.It can call back any type of data,
/// and use it as a type in the class and then return the data. See the use of de in the example.
///
typedef NavData<T> = Function(T data);
