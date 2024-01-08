import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/conservation_theme.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class DayLifeItem extends StatelessWidget {
  const DayLifeItem({
    this.dateTime,
    required this.days,
    this.onPressed,
    super.key,
  });

  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  final DateTime? dateTime;
  final int days;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final conservationTheme = Theme.of(context).extension<ConservationTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (dateTime != null)
          Container(
            margin: REdgeInsets.only(bottom: 8),
            child: Text(
              _dateFormat.format(dateTime!),
              style: TextStyle(
                color: mainTheme?.titleColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            image: DecorationImage(
              image: Assets.conservation.reportBackground.provider(),
              fit: BoxFit.cover,
            ),
          ),
          child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              padding: REdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '宝贝入园第',
                        style: TextStyle(
                          color: conservationTheme?.reportTitleColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: days.toString(),
                        style: TextStyle(
                          color: conservationTheme?.reportHighlightColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: '天',
                        style: TextStyle(
                          color: conservationTheme?.reportTitleColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '查看日报',
                      style: TextStyle(
                        color: conservationTheme?.reportTitleColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: conservationTheme?.reportTitleColor,
                      size: 20.r,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
