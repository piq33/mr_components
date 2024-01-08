import 'package:bsl/component/diy/template_grid.dart';
import 'package:bsl/log/global_log.dart';
import 'package:bsl/mixin/diy_mixin.dart';
import 'package:bsl/model/diy_models.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/diy_theme.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:bsl/widget/diy/diy_loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

class TemplateBody extends StatelessWidget with DiyPickerMixin {
  const TemplateBody({super.key});

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final diyTheme = Theme.of(context).extension<DiyTheme>();
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverToBoxAdapter(
            child: Container(
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
                    title: '制作相册',
                  ),
                  Container(
                    width: 329.w,
                    height: 60.h,
                    margin: REdgeInsets.only(left: 23, top: 30, right: 23),
                    decoration: BoxDecoration(
                      color: mainTheme?.cardBoxBackground,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: TextButton(
                      onPressed: () => _onTemplatePressed(context),
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Assets.diy.nonTemplateIcon
                              .image(width: 26.w, height: 26.h),
                          SizedBox(width: 10.w),
                          Text(
                            '不使用模板',
                            style: TextStyle(
                              color: diyTheme?.templateTitleColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: REdgeInsets.only(top: 12),
            sliver: SliverToBoxAdapter(
              child: Container(
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
                    '模板列表',
                    style: TextStyle(
                      color: diyTheme?.templateTitleColor,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ];
      },
      body: Container(
        color: mainTheme?.cardBoxBackground,
        child: TemplateGrid(
          onTemplatePressed: (template) {
            final parameters = {
              'templateId': template.templateId?.toString() ?? '',
            };
            Get.toNamed('diy/preview', parameters: parameters);
          },
        ),
      ),
    );
  }

  void _onTemplatePressed(BuildContext context) async {
    final model = DiyProductModel();
    final success = await pickPhoto(context, model, maxCount: 30);
    if (!success) return;

    logDebug('已选择图片, 当前diy: $model');
    if (!context.mounted) return;
    await pickMusic(context, model);

    logDebug('已选择音乐, 当前diy: $model');
    if ((!model.validate)) return;

    await SmartDialog.showLoading(
      useAnimation: true,
      animationTime: const Duration(seconds: 3),
      animationBuilder: (
        AnimationController controller,
        Widget child,
        AnimationParam animationParam,
      ) {
        return DiyLoadingDialog(animation: controller, child: child);
      },
      builder: (context) =>
          Assets.diy.diyLoadingIcon.image(width: 106.w, height: 106.h),
      displayTime: const Duration(seconds: 2),
    );
    Get.toNamed('diy/making', arguments: model);
  }
}
