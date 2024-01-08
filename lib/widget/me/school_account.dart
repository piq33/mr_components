import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/me_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SchoolAccount extends StatelessWidget {
  const SchoolAccount({required this.count, this.onPressed, super.key});

  final int count;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final meTheme = Theme.of(context).extension<MeTheme>();
    return Container(
      padding: REdgeInsets.only(left: 5, top: 15, right: 5, bottom: 5),
      margin: REdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: meTheme?.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1.r),
            blurRadius: 12.r,
            color: meTheme?.cardBoxShadow ?? Colors.transparent,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: REdgeInsets.only(left: 10),
            child: Text(
              '学校账户',
              style: TextStyle(
                color: mainTheme?.titleColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(padding: REdgeInsets.only(top: 10)),
          TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(padding: REdgeInsets.all(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Assets.me.billIcon.image(width: 23.w),
                Padding(padding: REdgeInsets.only(left: 8)),
                Expanded(
                  child: Text(
                    '待缴费订单',
                    style: TextStyle(
                      color: mainTheme?.textColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                if (count > 0)
                  Container(
                    width: 19.w,
                    height: 19.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: meTheme?.badgeBackground,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      count.toStringAsFixed(0),
                      style: TextStyle(
                        color: meTheme?.badgeTextColor,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                Padding(padding: REdgeInsets.only(left: 10)),
                Assets.me.billMoreIcon.image(width: 22.w, height: 22.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
