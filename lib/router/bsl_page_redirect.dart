import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

Route<dynamic> bslGenerator(RouteSettings settings) {
  return BslPageRedirect(settings: settings).page();
}

List<Route<dynamic>> bslInitialRoutesGenerate(String name) {
  return [BslPageRedirect(settings: RouteSettings(name: name)).page()];
}

// 原Get PageRedirect没有对GetPageRoute的title赋值, 导致无法在observer中获取到title
class BslPageRedirect extends PageRedirect {
  BslPageRedirect({super.settings});

  @override
  GetPageRoute<T> page<T>() {
    while (needRecheck()) {}
    final r = (isUnknown ? unknownRoute : route)!;
    return GetPageRoute<T>(
      page: r.page,
      parameter: r.parameters,
      title: r.title,
      settings: isUnknown
          ? RouteSettings(
              name: r.name,
              arguments: settings!.arguments,
            )
          : settings,
      curve: r.curve,
      opaque: r.opaque,
      showCupertinoParallax: r.showCupertinoParallax,
      gestureWidth: r.gestureWidth,
      customTransition: r.customTransition,
      binding: r.binding,
      bindings: r.bindings,
      transitionDuration:
          r.transitionDuration ?? Get.defaultTransitionDuration,
      transition: r.transition,
      popGesture: r.popGesture,
      fullscreenDialog: r.fullscreenDialog,
      middlewares: r.middlewares,
    );
  }
}
