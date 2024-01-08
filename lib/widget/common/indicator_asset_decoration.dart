import 'dart:ui' as ui;

import 'package:flutter/widgets.dart';

class _AssetPainter extends BoxPainter {
  final ui.Image image;
  final BoxFit fit;
  final Alignment alignment;

  _AssetPainter({
    required this.image,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
  });

  final pen = Paint();

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final inputSize = Size(image.width.toDouble(), image.height.toDouble());
    final Rect dstRect = offset & (configuration.size ?? Size.zero);
    final outputSize = dstRect.size;
    final fittedSizes = applyBoxFit(fit, inputSize, outputSize);
    Size destinationSize = fittedSizes.destination;

    final double halfWidthDelta =
        (outputSize.width - destinationSize.width) / 2.0;
    final double halfHeightDelta =
        (outputSize.height - destinationSize.height) / 2.0;
    final double dx = halfWidthDelta + alignment.x * halfWidthDelta;
    final double dy = halfHeightDelta + alignment.y * halfHeightDelta;
    final Offset destinationPosition = dstRect.topLeft.translate(dx, dy);
    final Rect destinationRect = destinationPosition & destinationSize;
    final inputRect =
        Alignment.center.inscribe(fittedSizes.source, Offset.zero & inputSize);
    final outputRect =
        Alignment.center.inscribe(fittedSizes.destination, destinationRect);
    canvas.drawImageRect(image, inputRect, outputRect, pen);
  }
}

// TabBar的Indicator使用自定义图片时，在TabBar初始化的第一帧不会绘制，需要自行绘制
class IndicatorAssetDecoration extends Decoration {
  final ui.Image image;
  final BoxFit fit;
  final Alignment alignment;

  const IndicatorAssetDecoration({
    required this.image,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _AssetPainter(image: image, fit: fit, alignment: alignment);
  }
}
