import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({this.text = '暂无数据', this.textColor, super.key});

  final String text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Assets.common.empty.image(
          width: 180.w,
          height: 148.h,
          fit: BoxFit.cover,
        ),
        Padding(padding: REdgeInsets.only(top: 20)),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor ?? theme?.cornerTextColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}

class EmptyWidget2 extends StatelessWidget {
  const EmptyWidget2({required this.text, required this.text2, super.key});

  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Assets.common.empty2.image(
          width: 118.w,
          height: 96.h,
          fit: BoxFit.cover,
        ),
        Padding(padding: REdgeInsets.only(top: 15)),
        Text(
          text,
          style: TextStyle(
            color: theme?.cornerTextColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        Padding(padding: REdgeInsets.only(top: 8)),
        Text(
          text2,
          style: TextStyle(
            color: theme?.cornerTextColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
