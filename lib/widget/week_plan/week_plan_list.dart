import 'package:bsl/model/week_plan_models.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/theme/week_plan_theme.dart';
import 'package:bsl/util/screen_utils.dart';
import 'package:bsl/widget/common/expandable.dart';
import 'package:bsl/widget/common/no_more_content.dart';
import 'package:bsl/widget/media/image_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

typedef OnWeekPlanImagePressed = Function(String url, String tag);

class _InfoItem extends StatelessWidget {
  const _InfoItem({required this.item});

  final WeekPlanInfoModel item;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final weekPlanTheme = Theme.of(context).extension<WeekPlanTheme>();
    return Container(
      margin: REdgeInsets.all(15),
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
            item.title,
            style: TextStyle(
              color: mainTheme?.titleColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          if (item.activity.isNotEmpty)
            Container(
              margin: REdgeInsets.only(top: 20),
              child: Text(
                item.activity,
                style: TextStyle(
                  color: mainTheme?.titleColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _WrapperItem extends StatefulWidget {
  const _WrapperItem({required this.info});

  final WeekPlanInfoWrapper info;

  @override
  State<_WrapperItem> createState() => _WrapperItemState();
}

class _WrapperItemState extends State<_WrapperItem> {
  final _controller = ExpandableController(initialExpanded: true);

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final weekPlanTheme = Theme.of(context).extension<WeekPlanTheme>();
    return ExpandableNotifier(
      controller: _controller,
      child: ScrollOnExpand(
        child: ExpandablePanel(
          controller: _controller,
          collapsed: _header(mainTheme, weekPlanTheme, true),
          expanded: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _header(mainTheme, weekPlanTheme, false),
              Container(
                height: 1.p,
                color: weekPlanTheme?.dividerColor,
                margin: REdgeInsets.symmetric(horizontal: 15),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final info = widget.info.infoList[index];
                  return _InfoItem(item: info);
                },
                separatorBuilder: (context, index) => SizedBox(height: 15.h),
                itemCount: widget.info.infoList.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header(
    MainTheme? mainTheme,
    WeekPlanTheme? weekPlanTheme,
    bool collapsed,
  ) {
    final borderRadius = collapsed
        ? BorderRadius.circular(12.r)
        : BorderRadius.only(
            topLeft: Radius.circular(12.r),
            topRight: Radius.circular(12.r),
          );
    return Container(
      decoration: BoxDecoration(
        color: weekPlanTheme?.cardBackground,
        borderRadius: borderRadius,
      ),
      child: TextButton(
        onPressed: () => _controller.toggle(),
        style: TextButton.styleFrom(
          padding: REdgeInsets.all(15),
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.info.timeType.display,
              style: TextStyle(
                color: mainTheme?.titleColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Icon(
              collapsed
                  ? Icons.keyboard_arrow_right_rounded
                  : Icons.keyboard_arrow_down_rounded,
              color: mainTheme?.subTextColor,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class _PlanItem extends StatefulWidget {
  const _PlanItem({
    required this.isImg,
    required this.dateTime,
    required this.list,
    this.onImagePressed,
  });

  final bool isImg;
  final DateTime? dateTime;
  final List<WeekPlanInfoModel> list;
  final OnWeekPlanImagePressed? onImagePressed;

  @override
  State<_PlanItem> createState() => _PlanItemState();
}

class _PlanItemState extends State<_PlanItem> {
  static final _weekdayFormat = DateFormat('EE', Intl.systemLocale);
  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  final _controller = ExpandableController(initialExpanded: true);
  final _list = List<WeekPlanInfoWrapper>.empty(growable: true);

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.list != widget.list) {
      _list.clear();
      _init();
    }
  }

  void _init() {
    // 根据时间类型分组
    final map = <WeekPlanTimeType, List<WeekPlanInfoModel>>{};
    for (var info in widget.list) {
      final list = map[info.timeType] ?? [];
      list.add(info);
      map[info.timeType] = list;
    }
    for (var entry in map.entries) {
      _list.add(
        WeekPlanInfoWrapper(timeType: entry.key, infoList: entry.value),
      );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final weekPlanTheme = Theme.of(context).extension<WeekPlanTheme>();
    return ExpandableNotifier(
      controller: _controller,
      child: ExpandablePanel(
        controller: _controller,
        collapsed: _header(weekPlanTheme, true),
        expanded: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _header(weekPlanTheme, false),
            _child(mainTheme, weekPlanTheme),
          ],
        ),
      ),
    );
  }

  Widget _header(WeekPlanTheme? theme, bool collapsed) {
    final borderRadius = collapsed
        ? BorderRadius.circular(12.r)
        : BorderRadius.only(
            topLeft: Radius.circular(12.r),
            topRight: Radius.circular(12.r),
          );
    return Container(
      decoration: BoxDecoration(
        color: theme?.titleBackground,
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
            if (widget.dateTime != null)
              Text(
                _weekdayFormat.format(widget.dateTime!),
                style: TextStyle(
                  color: theme?.titleColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            if (widget.dateTime != null)
              Container(
                margin: REdgeInsets.only(left: 10),
                child: Text(
                  _dateFormat.format(widget.dateTime!),
                  style: TextStyle(
                    color: theme?.titleColor,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  collapsed ? '展开' : '折叠',
                  style: TextStyle(
                    color: theme?.collapsedTextColor,
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

  Widget _child(MainTheme? mainTheme, WeekPlanTheme? weekPlanTheme) {
    Widget child;
    if (widget.isImg) {
      final item = widget.list.first;
      final img = item.img;
      if (img == null) return const SizedBox();

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
      child = Container(
        decoration: BoxDecoration(
          color: weekPlanTheme?.cardBackground,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final wrapper = _list[index];
            return _WrapperItem(info: wrapper);
          },
          separatorBuilder: (context, index) => SizedBox(height: 15.h),
          itemCount: _list.length,
        ),
      );
    }
    return Stack(
      children: [
        Container(
          height: _list.isNotEmpty ? 12.h : 0,
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

class _EmptyPlan extends StatelessWidget {
  const _EmptyPlan({this.dateTime});

  final DateTime? dateTime;

  static final _weekdayFormat = DateFormat('EE', Intl.systemLocale);
  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<WeekPlanTheme>();
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 15, vertical: 16),
      decoration: BoxDecoration(
        color: theme?.cardDisabledBackground,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (dateTime != null)
            Text(
              _weekdayFormat.format(dateTime!),
              style: TextStyle(
                color: theme?.cardDisabledTextColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          if (dateTime != null)
            Container(
              margin: REdgeInsets.only(left: 10),
              child: Text(
                _dateFormat.format(dateTime!),
                style: TextStyle(
                  color: theme?.cardDisabledTextColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          const Spacer(),
          Text(
            '今日暂无课程安排',
            style: TextStyle(
              color: theme?.cardDisabledTextColor,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class WeekPlanList extends StatelessWidget {
  const WeekPlanList({required this.plan, this.onImagePressed, super.key});

  final WeekPlanModel plan;
  final OnWeekPlanImagePressed? onImagePressed;

  @override
  Widget build(BuildContext context) {
    final infoList = plan.infoList;
    if (infoList.isEmpty) return _EmptyPlan(dateTime: plan.currDate);

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: _PlanItem(
              isImg: plan.isPicture,
              dateTime: plan.currDate,
              list: infoList,
              onImagePressed: onImagePressed,
            ),
          ),
          NoMoreContent(margin: REdgeInsets.only(bottom: 20)),
        ],
      ),
    );
  }
}
