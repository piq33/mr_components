import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/theme/time_theme.dart';
import 'package:bsl/widget/common/card_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentWrapper extends StatelessWidget {
  final String title;
  final Widget child;
  const ContentWrapper({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final timeTheme = Theme.of(context).extension<TimeTheme>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Container(
              width: 3.w,
              height: 14.h,
              margin: REdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                color: timeTheme?.markerColor ?? Colors.transparent,
                borderRadius: BorderRadius.circular(4.r),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 14.sp,
                color: mainTheme?.titleColor,
              ),
            )
          ],
        ),
        SizedBox(height: 15.h),
        child,
      ],
    );
  }
}

class WrapperBox extends StatelessWidget {
  final String title;
  final Widget child;
  final double? marginBottom;
  const WrapperBox(
      {super.key, required this.title, required this.child, this.marginBottom});

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();

    return CardBox(
      padding: REdgeInsets.all(15.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: mainTheme?.titleColor,
                height: 1),
          ),
          SizedBox(height: marginBottom ?? 20.h),
          child
        ],
      ),
    );
  }
}
