import 'package:bsl/model/common_model.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/theme/time_theme.dart';
import 'package:bsl/widget/common/gender_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget {
  const Header({
    this.avatar,
    required this.studentName,
    this.studentCode,
    this.age,
    required this.gender,
    this.onAvatarPressed,
    this.onMomentPressed,
    this.onDiyPressed,
    super.key,
  });

  final String? avatar;
  final String studentName;
  final String? studentCode;
  final int? age;
  final Gender gender;
  final VoidCallback? onAvatarPressed;
  final VoidCallback? onMomentPressed;
  final VoidCallback? onDiyPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final timeTheme = Theme.of(context).extension<TimeTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: REdgeInsets.only(left: 13)),
            Container(
              width: 67.r,
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 2.w),
              margin: EdgeInsets.only(top: 4.h),
              foregroundDecoration: BoxDecoration(
                image: DecorationImage(
                  image: Assets.common.avatarDecoration.provider(),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: GenderAvatar(
                size: 47.r,
                childSize: 16.r,
                avatar: avatar,
                borderWidth: 3.w,
                gender: gender,
                onPressed: onAvatarPressed,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      studentName,
                      style: TextStyle(
                        fontSize: 17.sp,
                        height: 1,
                        color: mainTheme?.titleColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    /// 暂时隐藏
                    // Baseline(
                    //   baseline: 17.h,
                    //   baselineType: TextBaseline.alphabetic,
                    //   child: Icon(
                    //     Icons.keyboard_arrow_right_rounded,
                    //     color: mainTheme?.titleColor,
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(height: 6.h),
                Container(
                  width: 48.r,
                  height: 16.r,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 8.w),
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(
                      image: Assets.time.ageBackground.provider(),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Text(
                    '${age ?? ''}岁',
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: timeTheme?.studentAgeTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            Container(
              height: 25.h,
              width: 120.w,
              margin: REdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    timeTheme?.studentClipBackground1 ?? Colors.transparent,
                    timeTheme?.studentClipBackground2 ?? Colors.transparent,
                    timeTheme?.studentClipBackground3 ?? Colors.transparent,
                  ],
                ),
              ),
              child: TextButton(
                onPressed: onMomentPressed,
                style: TextButton.styleFrom(
                  padding: REdgeInsets.only(
                    top: 3,
                    left: 3,
                    bottom: 3,
                    right: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                child: Row(
                  children: [
                    Assets.time.albumIcon.image(width: 19.w, height: 19.h),
                    Padding(padding: REdgeInsets.only(left: 4)),
                    Expanded(
                      child: Text(
                        '宝宝精彩瞬间',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: timeTheme?.studentClipTextColor,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Baseline(
                      baseline: 16.h,
                      baselineType: TextBaseline.ideographic,
                      child: Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: timeTheme?.studentClipTextColor,
                        size: 15.r,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            height: 25.h,
            width: 120.w,
            margin: REdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.r)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  timeTheme?.studentClipBackground1 ?? Colors.transparent,
                  timeTheme?.studentClipBackground2 ?? Colors.transparent,
                  timeTheme?.studentClipBackground3 ?? Colors.transparent,
                ],
              ),
            ),
            child: TextButton(
              onPressed: onDiyPressed,
              style: TextButton.styleFrom(
                padding: REdgeInsets.only(
                  top: 3,
                  left: 3,
                  bottom: 3,
                  right: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
              child: Row(
                children: [
                  Assets.time.diyIcon.image(width: 19.w, height: 19.h),
                  Padding(padding: REdgeInsets.only(left: 4)),
                  Expanded(
                    child: Text(
                      'DIY相册',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: timeTheme?.studentClipTextColor,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Baseline(
                    baseline: 16.h,
                    baselineType: TextBaseline.ideographic,
                    child: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: timeTheme?.studentClipTextColor,
                      size: 15.r,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
