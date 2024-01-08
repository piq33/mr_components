import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomMediaPicker extends StatelessWidget {
  const BottomMediaPicker({
    required this.galleryText,
    required this.cameraText,
    this.onGalleryPressed,
    this.onCameraPressed,
    this.child,
    super.key,
  });

  final Widget? child;
  final String galleryText;
  final String cameraText;
  final VoidCallback? onGalleryPressed;
  final VoidCallback? onCameraPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    final List<Widget> children = [
      TextButton(
        onPressed: onGalleryPressed,
        style: TextButton.styleFrom(
          padding: REdgeInsets.symmetric(horizontal: 20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.childtask.imageBottomPickerLocalIcon.image(
              width: 52.w,
              height: 52.h,
            ),
            Padding(padding: REdgeInsets.only(top: 10)),
            Text(
              galleryText,
              style: TextStyle(
                color: theme?.textColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      TextButton(
        onPressed: onCameraPressed,
        style: TextButton.styleFrom(
          padding: REdgeInsets.symmetric(horizontal: 20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.childtask.imageBottomPickerCameraIcon.image(
              width: 52.w,
              height: 52.h,
            ),
            Padding(padding: REdgeInsets.only(top: 10)),
            Text(
              cameraText,
              style: TextStyle(
                color: theme?.textColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    ];

    if (child != null) {
      children.add(child ?? const SizedBox.shrink());
    }

    return Container(
      height: 150.h,
      padding: REdgeInsets.symmetric(vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      ),
    );
  }
}
