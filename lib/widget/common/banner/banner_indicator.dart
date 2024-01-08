import 'dart:math';

import 'package:flutter/material.dart';

class BannerIndicator extends StatelessWidget {
  const BannerIndicator({
    super.key,
    required this.controller,
    required this.length,
    this.width,
    this.height = 5,
    this.maxWidth = 20,
    this.minWidth = 20,
    this.indicatorPadding,
    this.selectedGradient,
    this.selectedColor,
    this.unselectedColor,
  });

  final PageController controller;
  final int length;
  final double? width;
  final double height;
  final double maxWidth;
  final double minWidth;
  final EdgeInsetsGeometry? indicatorPadding;
  final Gradient? selectedGradient;
  final Color? selectedColor;
  final Color? unselectedColor;

  @override
  Widget build(BuildContext context) {
    final controller = this.controller;
    assert(() {
      if (controller == null) {
        throw FlutterError('No TabController for $runtimeType.\n'
            'When creating a $runtimeType, you must either provide an explicit '
            'TabController using the "controller" property, or you must ensure that there '
            'is a DefaultTabController above the $runtimeType.\n'
            'In this case, there was neither an explicit controller nor a default controller.');
      }
      return true;
    }());
    final TabBarTheme tabBarTheme = TabBarTheme.of(context);
    final Color selectedColor =
        this.selectedColor ?? Theme.of(context).indicatorColor;
    final Color unselectedColor = this.unselectedColor ??
        tabBarTheme.unselectedLabelColor ??
        selectedColor.withOpacity(0.3);

    if (width != null) {
      return CustomPaint(
        size: Size(width!, height),
        painter: _MainIndicator(
          controller: controller,
          length: length,
          width: width!,
          height: height,
          minWidth: minWidth,
          maxWidth: maxWidth,
          indicatorPadding: indicatorPadding,
          selectedGradient: selectedGradient,
          selectedColor: selectedColor,
          unselectedColor: unselectedColor,
        ),
      );
    }
    return LayoutBuilder(builder: (context, constraint) {
      return CustomPaint(
        size: Size(constraint.maxWidth, height),
        painter: _MainIndicator(
          controller: controller,
          length: length,
          width: constraint.maxWidth,
          height: height,
          minWidth: minWidth,
          maxWidth: maxWidth,
          indicatorPadding: indicatorPadding,
          selectedGradient: selectedGradient,
          selectedColor: selectedColor,
          unselectedColor: unselectedColor,
        ),
      );
    });
  }
}

class _MainIndicator extends CustomPainter {
  _MainIndicator({
    required this.controller,
    required this.length,
    required this.width,
    required this.height,
    required this.maxWidth,
    required this.minWidth,
    this.selectedGradient,
    this.selectedColor,
    this.unselectedColor,
    this.indicatorPadding,
  }) : super(repaint: controller);

  final PageController controller;
  final int length;
  final double width;
  final double height;
  final double maxWidth;
  final double minWidth;
  final Gradient? selectedGradient;
  final Color? selectedColor;
  final Color? unselectedColor;
  final EdgeInsetsGeometry? indicatorPadding;

  @override
  void paint(Canvas canvas, Size size) {
    final animation = controller.page ?? 0;
    // 计算所有indicator的总宽度
    var indicatorWidth =
        (minWidth + (indicatorPadding?.horizontal ?? 0)) * (length - 1) +
            maxWidth;
    // 与控件宽度比较，取最小值
    indicatorWidth = min(indicatorWidth, width);
    // 保证indicator居中显示
    final centerEnsureOffset = (width - indicatorWidth) / 2;
    final rect = Offset.zero & size;
    final rRect = RRect.fromRectAndRadius(rect, Radius.circular(height));
    canvas.clipRRect(rRect);

    // 所选中indicator的起始位置
    final selectedStartX =
        (minWidth + (indicatorPadding?.horizontal ?? 0)) * animation;
    // 当选中indicator超出屏幕时, 保证其可以显示在屏幕上
    final selectedOffset = (selectedStartX + maxWidth) > width
        ? (selectedStartX + maxWidth) - width
        : 0.0;

    final matrix4 =
        Matrix4.translationValues(centerEnsureOffset - selectedOffset, 0, 0);
    _drawFixedUnselectedIndicator(canvas, size, matrix4);

    final paint = Paint()
      // TODO 渐变绘制待实现
      ..shader = selectedGradient?.createShader(rect)
      ..color = selectedColor ?? Colors.transparent
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.height;
    final path = Path()
      ..relativeMoveTo(selectedStartX, size.height / 2)
      ..relativeLineTo(maxWidth, 0);
    canvas.drawPath(path.transform(matrix4.storage), paint);
  }

  void _drawFixedUnselectedIndicator(
      Canvas canvas, Size size, Matrix4 matrix4) {
    final path = Path()..relativeMoveTo(0, size.height / 2);

    final offset = controller.page ?? 0.0;
    final forward = offset > 0;
    final backward = offset < 0;
    final animation = offset;

    int fromIndex;
    int toIndex;
    double progress;
    fromIndex = controller.page?.floor() ?? 0;
    toIndex = forward
        ? fromIndex + 1
        : backward
            ? fromIndex - 1
            : fromIndex;

    for (var index = 0; index < length; index++) {
      if (index != 0) {
        path.relativeMoveTo(indicatorPadding?.horizontal ?? 0, 0);
      }

      double width = 0.0;
      final t = maxWidth - minWidth;
      if (index == fromIndex) {
        progress = (animation - fromIndex).abs();
        width = maxWidth - t * progress;
      } else if (index == toIndex) {
        progress = (animation - fromIndex).abs();
        width = minWidth + t * progress;
      } else {
        width = minWidth;
      }
      path.relativeLineTo(width, 0);
    }

    final paint = Paint()
      ..color = unselectedColor ?? Colors.transparent
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.height;
    canvas.drawPath(path.transform(matrix4.storage), paint);
  }

  @override
  bool shouldRepaint(covariant _MainIndicator oldDelegate) {
    return oldDelegate.controller != controller;
  }
}
