import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/me_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditableButton extends StatelessWidget {
  const EditableButton({this.onPressed, super.key});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final meTheme = Theme.of(context).extension<MeTheme>();
    return Container(
      decoration: BoxDecoration(
        color: meTheme?.editableBackground,
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: REdgeInsets.only(left: 3, top: 3, right: 10, bottom: 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.r),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.me.editableIcon.image(width: 19.w, height: 19.h),
            Padding(padding: REdgeInsets.only(left: 4)),
            Text(
              '编辑资料',
              style: TextStyle(
                color: meTheme?.editableTextColor,
                fontSize: 11.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Baseline(
              baseline: 16.h,
              baselineType: TextBaseline.ideographic,
              child: Icon(
                Icons.keyboard_arrow_right_rounded,
                color: meTheme?.editableTextColor,
                size: 15.r,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
