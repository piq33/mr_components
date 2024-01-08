import 'package:flutter/widgets.dart';

// 路由跳转时隐藏软键盘
class FocusNodeObserver extends NavigatorObserver {
  static final observer = FocusNodeObserver();

  @override
  void didPush(route, previousRoute) {
    super.didPush(route, previousRoute);
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  void didPop(route, previousRoute) {
    super.didPop(route, previousRoute);
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
