import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/me_theme.dart';
import 'package:components/widget/common/round_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonAvatar extends StatelessWidget {
  const PersonAvatar({this.avatar, this.onPressed, super.key});

  final String? avatar;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final meTheme = Theme.of(context).extension<MeTheme>();
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(93.r),
        ),
      ),
      child: Stack(
        children: [
          Container(
            width: 93.r,
            height: 93.r,
            padding: REdgeInsets.all(5),
            decoration: BoxDecoration(
              color: meTheme?.avatarBackground,
              shape: BoxShape.circle,
            ),
            child: RoundAvatar(width: 83.w, height: 83.h, avatar: avatar),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Assets.me.cameraIcon.image(
              width: 32.w,
              height: 32.h,
            ),
          ),
        ],
      ),
    );
  }
}
