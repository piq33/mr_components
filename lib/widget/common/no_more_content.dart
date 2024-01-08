import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoMoreContent extends StatelessWidget {
  const NoMoreContent({this.margin, this.alignment, super.key});

  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Container(
      margin: margin ?? REdgeInsets.only(top: 30),
      alignment: alignment ?? Alignment.center,
      child: Text(
        '没有更多内容啦~',
        style: TextStyle(
          color: theme?.noMoreContent,
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
