import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

typedef MarqueeBuilder = Marquee Function(
  BuildContext context,
  String text,
  TextStyle textStyle,
);
typedef TextBuilder = Text Function(
  BuildContext context,
  String text,
  TextStyle textStyle,
);

class MarqueeText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final double width;
  final TextBuilder textBuilder;
  final MarqueeBuilder marqueeBuilder;

  const MarqueeText({
    required this.width,
    required this.marqueeBuilder,
    required this.textBuilder,
    required this.text,
    required this.style,
    super.key,
  });

  Size calculateTextSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(
        minWidth: 0,
        maxWidth: double.infinity,
      );
    return textPainter.size;
  }

  @override
  Widget build(BuildContext context) {
    final textWidth = calculateTextSize(text, style).width;
    return textWidth < width
        ? textBuilder(context, text, style)
        : marqueeBuilder(context, text, style);
  }
}
