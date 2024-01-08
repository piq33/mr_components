import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/util/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomPicker extends StatelessWidget {
  const BottomPicker({
    this.onLocalPressed,
    this.onPhotoPressed,
    this.onClipPressed,
    super.key,
  });

  final VoidCallback? onLocalPressed;
  final VoidCallback? onPhotoPressed;
  final VoidCallback? onClipPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 15.h),
        Center(
          child: Text(
            '请选择导入照片来源',
            style: TextStyle(
              color: mainTheme?.titleColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 13.h),
        Container(
          height: 1.p,
          margin: REdgeInsets.symmetric(horizontal: 20),
          color: mainTheme?.dividerColor,
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _PickerButton(
              iconPath: Assets.diy.pickerLocalIcon.path,
              label: '本地相册',
              onPressed: onLocalPressed,
            ),
            _PickerButton(
              iconPath: Assets.diy.pickerPhotoIcon.path,
              label: '照片列表',
              onPressed: onPhotoPressed,
            ),
            _PickerButton(
              iconPath: Assets.diy.pickerClipIcon.path,
              label: '剪影列表',
              onPressed: onClipPressed,
            ),
          ],
        ),
        SizedBox(height: 25.h),
      ],
    );
  }
}

class _PickerButton extends StatelessWidget {
  const _PickerButton({
    required this.iconPath,
    required this.label,
    this.onPressed,
  });

  final String iconPath;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(padding: REdgeInsets.all(10)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.asset(iconPath, width: 48.w, height: 48.h),
          ),
          SizedBox(height: 12.h),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: mainTheme?.titleColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
