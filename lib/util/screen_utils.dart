import 'dart:ui';

extension ScreenUtils on num {
  double get p => this / window.devicePixelRatio;
}
