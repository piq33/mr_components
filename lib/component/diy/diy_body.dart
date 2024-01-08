import 'package:components/component/diy/popular_template_grid.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/diy_theme.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DiyBody extends StatelessWidget {
  const DiyBody({super.key});

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final diyTheme = Theme.of(context).extension<DiyTheme>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: Assets.diy.background.provider(),
              alignment: Alignment.topCenter,
            ),
          ),
          child: Column(
            children: [
              const AppbarWidget(
                background: Colors.transparent,
                title: 'DIY相册',
              ),
              Container(
                width: 329.w,
                height: 126.h,
                margin: REdgeInsets.only(left: 23, top: 30, right: 23),
                decoration: BoxDecoration(
                  color: mainTheme?.cardBoxBackground,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: _DiyButton(
                        path: Assets.diy.diyIcon.path,
                        label: '制作相册',
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          bottomLeft: Radius.circular(12.r),
                        ),
                        onPressed: () => Get.toNamed('diy/template'),
                      ),
                    ),
                    Expanded(
                      child: _DiyButton(
                        path: Assets.diy.historyIcon.path,
                        label: '历史作品',
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12.r),
                          bottomRight: Radius.circular(12.r),
                        ),
                        onPressed: () => Get.toNamed('diy/productHistory'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.h),
        Container(
          decoration: BoxDecoration(
            color: mainTheme?.cardBoxBackground,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              topRight: Radius.circular(12.r),
            ),
          ),
          padding: REdgeInsets.only(left: 14, top: 18, right: 14),
          child: Container(
            width: 152.w,
            padding: REdgeInsets.only(bottom: 4),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.diy.templateDecoration.provider(),
                alignment: Alignment.centerLeft,
              ),
            ),
            child: Text(
              '热门模板',
              style: TextStyle(
                color: diyTheme?.templateTitleColor,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: mainTheme?.cardBoxBackground,
            child: PopularTemplateGrid(
              onTemplatePressed: (template) {
                final parameters = {
                  'templateId': template.templateId?.toString() ?? '',
                };
                Get.toNamed('diy/preview', parameters: parameters);
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _DiyButton extends StatelessWidget {
  const _DiyButton({
    required this.path,
    required this.label,
    this.borderRadius,
    this.onPressed,
  });

  final String path;
  final String label;
  final BorderRadius? borderRadius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.zero,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            path,
            width: 58.w,
            height: 58.w,
          ),
          SizedBox(height: 4.h),
          Text(
            label,
            style: TextStyle(
              fontSize: 16.sp,
              color: mainTheme?.titleColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
