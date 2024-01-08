import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardBox extends StatelessWidget {
  const CardBox({
    this.width,
    this.height,
    this.child,
    this.padding,
    this.margin,
    this.alignment,
    super.key,
  });

  final double? width;
  final double? height;
  final Widget? child;
  final Alignment? alignment;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      alignment: alignment,
      decoration: BoxDecoration(
        color: theme?.cardBoxBackground,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1.r),
            blurRadius: 12.r,
            color: theme?.cardBoxShadow ?? Colors.transparent,
          ),
        ],
      ),
      child: child,
    );
  }
}
