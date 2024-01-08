import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/diy_theme.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/widget/common/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee/marquee.dart';

class NonTemplateButton extends StatelessWidget {
  const NonTemplateButton({required this.selected, this.onPressed, super.key});

  final bool selected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final diyTheme = Theme.of(context).extension<DiyTheme>();
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: REdgeInsets.symmetric(horizontal: 10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 48.r,
            height: 48.r,
            padding: REdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                width: 2.r,
                color: (selected
                        ? diyTheme?.templateSelectedBorderColor
                        : diyTheme?.templateUnselectedBorderColor) ??
                    Colors.transparent,
              ),
            ),
            child: Assets.diy.nonTemplateIcon2.image(),
          ),
          SizedBox(height: 9.h),
          Text(
            '无模板',
            style: TextStyle(
              color: selected ? mainTheme?.titleColor : mainTheme?.subTextColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class TemplateButton extends StatelessWidget {
  const TemplateButton({
    required this.selected,
    this.url,
    this.path,
    required this.label,
    this.onPressed,
    super.key,
  });

  final bool selected;
  final String? url;
  final String? path;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final diyTheme = Theme.of(context).extension<DiyTheme>();
    return TextButton(
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 48.r,
            height: 48.r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                width: 1.r,
                color: (selected
                        ? diyTheme?.templateSelectedBorderColor
                        : diyTheme?.templateUnselectedBorderColor) ??
                    Colors.transparent,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: url != null
                  ? CacheImage(
                      imageUrl: url,
                      width: 48.r,
                      height: 48.r,
                      fit: BoxFit.cover,
                    )
                  : path != null
                      ? Image.asset(path!, fit: BoxFit.cover)
                      : const SizedBox(),
            ),
          ),
          SizedBox(height: 9.h),
          SizedBox(
            width: 80.w,
            height: 20.h,
            child: selected
                ? Marquee(
                    text: label,
                    velocity: 20,
                    style: TextStyle(
                      color: selected
                          ? mainTheme?.titleColor
                          : mainTheme?.subTextColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                : Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: selected
                          ? mainTheme?.titleColor
                          : mainTheme?.subTextColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
