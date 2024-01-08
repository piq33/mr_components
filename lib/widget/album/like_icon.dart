import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LikeIcon extends StatelessWidget {
  const LikeIcon({
    required this.count,
    required this.like,
    this.onPressed,
    super.key,
  });

  final int count;
  final bool like;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(padding: REdgeInsets.all(5)),
          child: like
              ? Assets.album.likeIcon.image(width: 13.w, height: 13.h)
              : Assets.album.dislikeIcon.image(width: 13.w, height: 13.h),
        ),
        Text(
          count.toString(),
          style: TextStyle(
            color: mainTheme?.cornerTextColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
