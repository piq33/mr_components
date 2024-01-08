import 'package:bsl/model/diy/diy_model.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/widget/common/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TemplateItem extends StatelessWidget {
  const TemplateItem({required this.template, this.onPressed, super.key});

  final TemplateModel template;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: mainTheme?.cardBoxBorderColor ?? Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: [
          BoxShadow(
            color: mainTheme?.cardBoxShadow ?? Colors.transparent,
            blurRadius: 14,
            offset: const Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
              child: CacheImage(
                imageUrl: template.cover,
                height: 130.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 7.h),
            Container(
              height: 44.r,
              margin: REdgeInsets.symmetric(horizontal: 9),
              alignment: Alignment.topLeft,
              child: Text(
                template.templateName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: mainTheme?.titleColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 9),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Assets.diy.templateIcon.image(width: 14.w, height: 14.h),
                  SizedBox(width: 4.w),
                  Text(
                    '${template.usePeople}人使用此模版',
                    style: TextStyle(
                      color: mainTheme?.subTextColor,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.h),
          ],
        ),
      ),
    );
  }
}
