import 'package:flutter/widgets.dart';

class _RoundCornerIndicatorPainter extends BoxPainter {
  final Paint _paint;
  final Radius radius;
  final double tabHeight;

  final double? width;
  final double height;
  final EdgeInsets? padding;

  _RoundCornerIndicatorPainter({
    required Color color,
    this.width,
    required this.height,
    required this.radius,
    required this.tabHeight,
    this.padding,
  }) : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final size = cfg.size ?? Size.zero;
    double drawWidth = width ?? size.width;
    EdgeInsets drawPadding = padding ?? EdgeInsets.zero;

    /// 只传了width，则绘制在中间
    if (width != null && padding == null) {
      drawPadding = EdgeInsets.symmetric(
        horizontal: (size.width - drawWidth) / 2,
      );
    }

    /// 只传了padding，则仍然是绘制在中间
    if (padding != null && width == null) {
      drawWidth = size.width - drawPadding.horizontal;
    }

    /// 都没传
    if (width != null && padding != null) {
      drawWidth = size.width;
    }
    final leftPadding = drawPadding.horizontal / 2;
    final rrect = RRect.fromLTRBR(
      leftPadding + offset.dx,
      offset.dy + tabHeight,
      leftPadding + offset.dx + drawWidth,
      offset.dy + tabHeight + height,
      radius,
    );
    canvas.drawRRect(rrect, _paint);
  }
}

class RoundCornerIndicator extends Decoration {
  final BoxPainter _painter;
  RoundCornerIndicator({
    required Color color,
    double? width,
    required double height,
    required Radius radius,
    required double tabHeight,
    EdgeInsets? padding,
  }) : _painter = _RoundCornerIndicatorPainter(
          color: color,
          width: width,
          height: height,
          radius: radius,
          tabHeight: tabHeight,
          padding: padding,
        );

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}
