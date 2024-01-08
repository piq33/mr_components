import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentIcon extends StatelessWidget {
  const CommentIcon({required this.count, super.key});

  final int count;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Assets.album.commentIcon.image(width: 13.w, height: 13.h),
        SizedBox(width: 5.w),
        Text(
          count.toString(),
          style: TextStyle(
            color: mainTheme?.cornerTextColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
