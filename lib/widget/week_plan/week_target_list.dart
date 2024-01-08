import 'package:components/model/week_plan_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/week_plan_theme.dart';
import 'package:components/widget/common/expandable.dart';
import 'package:components/widget/common/no_more_content.dart';
import 'package:components/widget/media/image_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

typedef OnWeekTargetImagePressed = Function(String url, String tag);

class _TargetItem extends StatelessWidget {
  const _TargetItem({required this.target});

  final WeekPlanTargetModel target;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final weekPlanTheme = Theme.of(context).extension<WeekPlanTheme>();
    return Container(
      padding: REdgeInsets.all(15),
      decoration: BoxDecoration(
        color: weekPlanTheme?.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Container(
        padding: REdgeInsets.all(15),
        decoration: BoxDecoration(
          color: weekPlanTheme?.lessonBackground,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              target.title,
              style: TextStyle(
                color: mainTheme?.titleColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(padding: REdgeInsets.only(top: 12)),
            Text(
              target.content,
              strutStyle: const StrutStyle(height: 1.5),
              style: TextStyle(
                color: mainTheme?.titleColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WeekTargetList extends StatefulWidget {
  const WeekTargetList({required this.plan, this.onImagePressed, super.key});

  final WeekPlanModel plan;
  final OnWeekTargetImagePressed? onImagePressed;

  @override
  State<WeekTargetList> createState() => _WeekTargetListState();
}

class _WeekTargetListState extends State<WeekTargetList> {
  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  final _controller = ExpandableController(initialExpanded: true);

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final weekPlanTheme = Theme.of(context).extension<WeekPlanTheme>();
    return SingleChildScrollView(
      child: Container(
        margin: REdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ExpandableNotifier(
              controller: _controller,
              child: _expandablePanel(mainTheme, weekPlanTheme),
            ),
            const NoMoreContent(),
          ],
        ),
      ),
    );
  }

  Widget _expandablePanel(MainTheme? mainTheme, WeekPlanTheme? weekPlanTheme) {
    return ExpandablePanel(
      controller: _controller,
      collapsed: _header(
        mainTheme: mainTheme,
        weekPlanTheme: weekPlanTheme,
        collapsed: true,
      ),
      expanded: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _header(
            mainTheme: mainTheme,
            weekPlanTheme: weekPlanTheme,
            collapsed: false,
          ),
          _child(mainTheme, weekPlanTheme),
        ],
      ),
    );
  }

  Widget _header({
    MainTheme? mainTheme,
    WeekPlanTheme? weekPlanTheme,
    required bool collapsed,
  }) {
    final startDate = widget.plan.startDate;
    final endDate = widget.plan.endDate;
    final borderRadius = collapsed
        ? BorderRadius.circular(12.r)
        : BorderRadius.only(
            topLeft: Radius.circular(12.r),
            topRight: Radius.circular(12.r),
          );
    return Container(
      decoration: BoxDecoration(
        color: weekPlanTheme?.titleBackground,
        borderRadius: borderRadius,
      ),
      child: TextButton(
        onPressed: () => _controller.toggle(),
        style: TextButton.styleFrom(
          padding: REdgeInsets.symmetric(horizontal: 15, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '周目标',
              style: TextStyle(
                color: weekPlanTheme?.targetTitleColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(padding: REdgeInsets.only(left: 10)),
            if (startDate != null && endDate != null)
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _dateFormat.format(startDate),
                    style: TextStyle(
                      color: mainTheme?.titleColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    margin: REdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      '至',
                      style: TextStyle(
                        color: mainTheme?.subTextColor,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    _dateFormat.format(endDate),
                    style: TextStyle(
                      color: mainTheme?.titleColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  collapsed ? '展开' : '折叠',
                  style: TextStyle(
                    color: weekPlanTheme?.collapsedTextColor,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(padding: REdgeInsets.only(left: 5)),
                Image.asset(
                  collapsed
                      ? Assets.weekplan.expandIcon.path
                      : Assets.weekplan.collapseIcon.path,
                  fit: BoxFit.fitWidth,
                  height: 8.h,
                  width: 10.w,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _child(
    MainTheme? mainTheme,
    WeekPlanTheme? weekPlanTheme,
  ) {
    Widget child;
    final plan = widget.plan;
    if (plan.isPicture) {
      final infoList = plan.infoList;
      if (infoList.isEmpty) return const SizedBox();

      final item = infoList.first;
      final img = item.img;
      if (img == null || img.isEmpty) return const SizedBox();

      final tag = '${item.id}/${item.img}';
      child = Container(
        padding: REdgeInsets.all(15),
        decoration: BoxDecoration(
          color: weekPlanTheme?.cardBackground,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: mainTheme?.dividerColor ?? Colors.transparent,
                width: 1.r,
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Hero(
              tag: tag,
              child: ImagePreview(
                url: img,
                width: double.infinity,
                fit: BoxFit.fitWidth,
                borderRadius: BorderRadius.circular(12.r),
                previewIconDisplay: false,
                onPreviewPressed: (url, path) =>
                    widget.onImagePressed?.call(img, tag),
              ),
            )),
      );
    } else {
      child = ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final target = plan.targetList[index];
          return _TargetItem(target: target);
        },
        separatorBuilder: (context, index) => SizedBox(height: 15.h),
        itemCount: plan.targetList.length,
      );
    }
    return Stack(
      children: [
        Container(
          height: 12.h,
          color: weekPlanTheme?.titleBackground,
        ),
        child,
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
