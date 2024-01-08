import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    this.width,
    this.height,
    this.child,
    this.text,
    this.iconPath,
    this.dismissible = true,
    this.cancelText = '取消',
    this.confirmText = '确认',
    this.onCancel,
    required this.onConfirm,
    super.key,
  });

  final double? width;
  final double? height;
  final Widget? child;
  final String? text;
  final String? iconPath;
  final bool dismissible;
  final String cancelText;
  final String confirmText;
  final VoidCallback? onCancel;
  final VoidCallback onConfirm;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Container(
      width: width,
      height: height,
      padding: REdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              if (iconPath != null)
                Center(
                  child: Image.asset(iconPath!, width: 40.w, height: 40.h),
                ),
              if (dismissible)
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: Get.back,
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.r)),
                      ),
                    ),
                    child: Assets.common.closeIcon.image(
                      width: 16.w,
                      height: 16.h,
                    ),
                  ),
                )
            ],
          ),
          child ??
              Container(
                margin:
                    REdgeInsets.only(left: 4, top: 15, right: 4, bottom: 24),
                child: Text(
                  text ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: theme?.titleColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (onCancel != null)
                Expanded(
                  child: Container(
                    height: 30.h,
                    margin: REdgeInsets.only(left: 4, right: 5),
                    decoration: BoxDecoration(
                      color: theme?.dialogCancelButtonBackground,
                      borderRadius: BorderRadius.all(Radius.circular(60.r)),
                    ),
                    child: TextButton(
                      onPressed: onCancel,
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(60.r)),
                        ),
                      ),
                      child: Text(
                        cancelText,
                        style: TextStyle(
                          color: theme?.dialogCancelButtonTextColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              Expanded(
                child: Container(
                  height: 30.h,
                  margin: REdgeInsets.only(left: 5, right: 4),
                  decoration: BoxDecoration(
                    color: theme?.dialogConfirmButtonBackground,
                    borderRadius: BorderRadius.all(Radius.circular(60.r)),
                  ),
                  child: TextButton(
                    onPressed: onConfirm,
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(60.r)),
                      ),
                    ),
                    child: Text(
                      confirmText,
                      style: TextStyle(
                        color: theme?.dialogConfirmButtonTextColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
