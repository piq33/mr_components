import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateDialog extends StatelessWidget {
  const UpdateDialog({
    required this.version,
    required this.content,
    required this.forceUpdate,
    this.onClose,
    this.onPressed,
    super.key,
  });

  final String version;
  final String content;
  final bool forceUpdate;
  final VoidCallback? onClose;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: 271.w,
          margin: REdgeInsets.only(top: 35),
          decoration: BoxDecoration(
            color: theme?.dialogBackground,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Visibility(
                visible: !forceUpdate,
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: Container(
                  alignment: Alignment.centerRight,
                  margin: REdgeInsets.only(right: 6),
                  child: TextButton(
                    onPressed: onClose,
                    style: TextButton.styleFrom(
                      padding: REdgeInsets.all(11),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.r),
                      ),
                    ),
                    child: Icon(
                      Icons.close,
                      size: 12.r,
                      color: theme?.subTextColor,
                    ),
                  ),
                ),
              ),
              Padding(padding: REdgeInsets.only(top: 34)),
              Text(
                '发现新版本',
                style: TextStyle(
                  color: theme?.titleColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(padding: REdgeInsets.only(top: 8)),
              Text(
                version,
                style: TextStyle(
                  color: theme?.subTextColor,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(padding: REdgeInsets.only(top: 35)),
              Container(
                constraints: BoxConstraints(maxHeight: 400.h),
                padding: REdgeInsets.symmetric(horizontal: 25),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        '更新内容',
                        style: TextStyle(
                          color: theme?.titleColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(padding: REdgeInsets.only(bottom: 10)),
                      Text(
                        content,
                        strutStyle: const StrutStyle(height: 1.3),
                        style: TextStyle(
                          color: theme?.subTextColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: REdgeInsets.only(bottom: 34)),
              TextButton(
                onPressed: onPressed,
                style: TextButton.styleFrom(
                  fixedSize: Size(130.w, 33.h),
                  backgroundColor: theme?.mainButtonBackground,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.r),
                  ),
                ),
                child: Text(
                  '立即更新',
                  style: TextStyle(
                    color: theme?.mainButtonTextColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(padding: REdgeInsets.only(bottom: 20)),
            ],
          ),
        ),
        Assets.me.updateIcon.image(
          width: 92.w,
          height: 92.h,
        ),
      ],
    );
  }
}
