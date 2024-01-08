import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/controller/week_plan/week_plan_controller.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/week_plan_theme.dart';
import 'package:bsl/util/date_utils.dart';
import 'package:bsl/widget/common/date_selector.dart';
import 'package:bsl/widget/common/empty.dart';
import 'package:bsl/widget/week_plan/week_plan_list.dart';
import 'package:bsl/widget/week_plan/week_plan_tabbar.dart';
import 'package:bsl/widget/week_plan/week_target_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class _Marker extends StatelessWidget {
  const _Marker({required this.empty});

  final bool empty;

  @override
  Widget build(BuildContext context) {
    final weekPlanTheme = Theme.of(context).extension<WeekPlanTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 4.w,
          height: 4.h,
          decoration: BoxDecoration(
            color: empty ? Colors.transparent : weekPlanTheme?.markerColor,
            shape: BoxShape.circle,
          ),
        ),
        Padding(padding: REdgeInsets.only(top: 15)),
        Image.asset(
          empty
              ? Assets.weekplan.noPlanIcon.path
              : Assets.weekplan.hasPlanIcon.path,
          width: 24.w,
          height: 14.h,
        ),
      ],
    );
  }
}

class WeekPlanBody extends StatefulWidget {
  const WeekPlanBody({this.initialDate, super.key});

  final String? initialDate;

  @override
  State createState() => _WeekPlanBodyState();
}

class _WeekPlanBodyState extends State<WeekPlanBody> {
  final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);
  final _controller = Get.find<WeekPlanController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final date = widget.initialDate;
      if (date != null && date.isNotEmpty) _jumpDate(date);
    });
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final date = widget.initialDate;
      if (date != null && date.isNotEmpty) _jumpDate(date);
    });
  }

  void _jumpDate(String date) {
    try {
      final targetDate = _dateFormat.parse(date);
      _controller.selectTargetDate(targetDate);
    } catch (e, stackTrace) {
      logError('周计划指定日期异常', e, stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: REdgeInsets.only(top: 20)),
        Obx(() {
          return WeekSelector(
            selectedDate: _controller.selectedDate.value,
            selectedDecoration: Assets.recipes.weekSelectedDecoration.image(
              height: 13.h,
              fit: BoxFit.fitHeight,
            ),
            onWeekdayRangeSelected: (range) {
              logDebug(''
                  '周计划当前选中周\n'
                  '起始: ${range.startDate}\n'
                  '结束: ${range.endDate}\n'
                  '');
              _controller.selectedWeek.value = range;
            },
          );
        }),
        Padding(padding: REdgeInsets.only(top: 15)),
        Obx(() {
          final range = _controller.selectedWeek.value;
          final plans = _controller.plans.value;
          return WeekdaySelector(
            weekdayRange: range,
            padding: REdgeInsets.only(top: 8, bottom: 15),
            selectedDate: _controller.selectedDay.value,
            selectedDecoration: Image.asset(
              Assets.weekplan.weekdaySelectedDecoration.path,
              height: 24.h,
              fit: BoxFit.fitHeight,
            ),
            // 所选择的日期范围以外的日期以及周末不可点击
            disabledCondition: (dateTime) =>
                dateTime.isBefore(range.startDate) ||
                dateTime.isAfter(range.endDate) ||
                dateTime.weekday == DateTime.saturday ||
                dateTime.weekday == DateTime.sunday,
            // 对应日期菜单列表不为空则显示标记
            markerBuilder: (disabled, selected, dateTime) {
              final empty = plans
                      .firstWhereOrNull((element) =>
                          element.currDate?.sameMonthDay(dateTime) ?? false)
                      ?.infoList
                      .isEmpty ??
                  true;
              return _Marker(empty: empty);
            },
            onWeekdayPressed: (day) {
              _controller.selectedDay.value = day;
            },
          );
        }),
        Padding(padding: REdgeInsets.only(top: 25)),
        Container(
          alignment: Alignment.centerLeft,
          margin: REdgeInsets.only(left: 4),
          child: WeekPlanTabBar(controller: _controller.tabController),
        ),
        Expanded(
          child: Obx(() {
            final loading = _controller.loading.value;
            return AnimatedOpacity(
              opacity: loading ? 0 : 1,
              duration: const Duration(milliseconds: 500),
              child: TabBarView(
                controller: _controller.tabController,
                children: [
                  Obx(() {
                    final selectedPlan = _controller.selectedPlan.value;
                    return selectedPlan.isEmpty
                        ? const EmptyWidget(text: '暂无计划~')
                        : WeekPlanList(
                            plan: selectedPlan,
                            onImagePressed: (url, tag) {
                              final parameters = {'url': url, 'tag': tag};
                              Get.toNamed('image', parameters: parameters);
                            },
                          );
                  }),
                  Obx(() {
                    final selectedPlan = _controller.selectedPlan.value;
                    return selectedPlan.isPlainText && selectedPlan.isEmpty
                        ? const EmptyWidget(text: '暂无目标~')
                        : WeekTargetList(
                            plan: selectedPlan,
                            onImagePressed: (url, tag) {
                              final parameters = {'url': url, 'tag': tag};
                              Get.toNamed('image', parameters: parameters);
                            },
                          );
                  }),
                ],
              ),
            );
          }),
        ),
      ],
    );
  }
}
