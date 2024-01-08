import 'package:flutter/material.dart';

class FloatingButtonCustomLocation extends FloatingActionButtonLocation {
  FloatingActionButtonLocation location;

  /// X方向的偏移量
  final double offsetX;

  /// Y方向的偏移量
  final double offsetY;
  FloatingButtonCustomLocation(
    this.location, {
    this.offsetX = 0,
    this.offsetY = 0,
  });

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    Offset offset = location.getOffset(scaffoldGeometry);
    return Offset(offset.dx + offsetX, offset.dy + offsetY);
  }
}
