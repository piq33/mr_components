import 'package:components/model/diy/diy_model.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/diy/template_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef OnTemplatePressed = Function(TemplateModel template);

class TemplateList extends StatelessWidget {
  const TemplateList({
    this.selectedTemplate,
    required this.templates,
    this.onNonTemplatePressed,
    this.onTemplatePressed,
    super.key,
  });

  final TemplateModel? selectedTemplate;
  final List<TemplateModel> templates;
  final VoidCallback? onNonTemplatePressed;
  final OnTemplatePressed? onTemplatePressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Container(
      height: 120.h,
      decoration: BoxDecoration(
        color: mainTheme?.cardBoxBackground ?? Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.r),
          topRight: Radius.circular(12.r),
        ),
        boxShadow: [
          BoxShadow(
            color: mainTheme?.cardBoxShadow ?? Colors.transparent,
            blurRadius: 16,
            offset: const Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: REdgeInsets.only(top: 21, bottom: 10),
        child: CustomScrollView(
          scrollDirection: Axis.horizontal,
          slivers: [
            SliverPadding(
              padding: REdgeInsets.only(left: 9, right: 13),
              sliver: SliverToBoxAdapter(
                child: NonTemplateButton(
                  selected: selectedTemplate == null,
                  onPressed: onNonTemplatePressed,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: 1.w,
                height: 68.h,
                color: mainTheme?.dividerColor,
              ),
            ),
            SliverPadding(
              padding: REdgeInsets.symmetric(horizontal: 25),
              sliver: SliverList.separated(
                itemBuilder: (context, index) {
                  final template = templates[index];
                  final selected =
                      template.templateId == selectedTemplate?.templateId;
                  return TemplateButton(
                    selected: selected,
                    url: template.cover,
                    path: Assets.diy.nonTemplateIcon2.path,
                    label: template.templateName,
                    onPressed: () => onTemplatePressed?.call(template),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 10.w),
                itemCount: templates.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
