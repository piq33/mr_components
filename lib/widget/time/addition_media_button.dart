import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdditionMediaButton extends StatelessWidget {
  const AdditionMediaButton(
      {required this.onGalleryPressed, required this.text, super.key});

  final String text;
  final VoidCallback onGalleryPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();

    return TextButton(
      onPressed: onGalleryPressed,
      style: TextButton.styleFrom(
        padding: REdgeInsets.symmetric(horizontal: 20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.time.paper.image(
            width: 52.w,
            height: 52.h,
          ),
          Padding(padding: REdgeInsets.only(top: 10)),
          Text(
            text,
            style: TextStyle(
              color: theme?.textColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
