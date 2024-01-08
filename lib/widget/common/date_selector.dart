import 'package:components/log/global_log.dart';
import 'package:components/model/common_model.dart';
import 'package:components/theme/date_selector_theme.dart';
import 'package:components/util/date_utils.dart';
import 'package:components/util/screen_utils.dart';
import 'package:chinese_number/chinese_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class _WeekButton extends StatelessWidget {
  const _WeekButton({
    required this.week,
    required this.selected,
    this.selectedDecoration,
    this.onPressed,
  });

  final int week;
  final bool selected;
  final Widget? selectedDecoration;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<DateSelectorTheme>();
    return Container(
      height: 29.h,
      decoration: BoxDecoration(
        color: selected
            ? theme?.weekHighlightBackground
            : theme?.weekNormalBackground,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Stack(
          children: [
            Container(
              padding: REdgeInsets.only(left: 15, right: 18),
              alignment: Alignment.center,
              child: Text(
                '第${week.toSimplifiedChineseNumber()}周',
                style: TextStyle(
                  color: selected
                      ? theme?.weekHighlightTextColor
                      : theme?.weekNormalTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            if (selected && selectedDecoration != null)
              Positioned(
                right: 0,
                bottom: 2.h,
                child: selectedDecoration!,
              ),
          ],
        ),
      ),
    );
  }
}

typedef WeekdayRangeSelected = Function(WeekdayRange selectRange);
typedef WeekItemBuilder = Widget Function(
  int week,
  bool selected,
  VoidCallback onPressed,
);

/// 周选择器
class WeekSelector extends StatefulWidget {
  WeekSelector({
    double? width,
    double? height,
    EdgeInsets? padding,
    required this.selectedDate,
    this.selectedDecoration,
    this.onWeekdayRangeSelected,
    this.weekItemBuilder,
    super.key,
  })  : width = width ?? double.infinity,
        height = height ?? 29.h,
        padding = padding ?? REdgeInsets.symmetric(horizontal: 16);

  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final DateTime selectedDate;
  final Widget? selectedDecoration;
  final WeekdayRangeSelected? onWeekdayRangeSelected;
  final WeekItemBuilder? weekItemBuilder;

  @override
  State<WeekSelector> createState() => _WeekSelectorState();
}

class _WeekSelectorState extends State<WeekSelector> {
  late final _scrollController = ItemScrollController();
  late final _positionsListener = ItemPositionsListener.create();

  // 所选中月份有多少周
  final _rangeList = List<WeekdayRange>.empty(growable: true);

  // 当前选中第几周
  late int _selectedWeek = 1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _refresh());
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedDate != widget.selectedDate) {
      _rangeList.clear();
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _refresh());
    }
  }

  void _refresh() {
    final initial = widget.selectedDate;
    // 获取当月第一天和最后一天
    final firstDayOfMonth = DateTime(initial.year, initial.month, 1);
    final lastDayOfMonth = DateTime(initial.year, initial.month + 1, 0);
    // 月份的第一个周日的位置
    int indexOfFirstSunday = DateTime.sunday - firstDayOfMonth.weekday;
    // 计算这个月有多少天
    final daysOfMonth = firstDayOfMonth.daysInMonth();
    // 除去首周日后剩余的天数
    final restDays = daysOfMonth - indexOfFirstSunday;

    var weeks = (restDays / 7).ceil();
    // 包含可能不完整的首周，则周数+1
    if (indexOfFirstSunday > 0) weeks += 1;

    var count = weeks;
    // 生成周列表
    // 若首周不完整，单独处理
    if (indexOfFirstSunday > 0) {
      _rangeList.add(
        WeekdayRange(
          startDate: firstDayOfMonth,
          endDate: firstDayOfMonth
              .add(Duration(days: indexOfFirstSunday))
              .add(const Duration(seconds: -1)),
        ),
      );
      count--;
    }
    for (var i = 0; i < (count - 1); i++) {
      final start =
          firstDayOfMonth.add(Duration(days: indexOfFirstSunday + i * 7));
      final end =
          start.add(const Duration(days: 7)).add(const Duration(seconds: -1));
      _rangeList.add(WeekdayRange(startDate: start, endDate: end));
    }
    // 尾周页可能不完整，单独处理
    final start = lastDayOfMonth.weekday == DateTime.sunday
        ? lastDayOfMonth
        : lastDayOfMonth.add(Duration(days: -lastDayOfMonth.weekday));
    final end = lastDayOfMonth
        .add(const Duration(days: 1))
        .add(const Duration(seconds: -1));
    _rangeList.add(WeekdayRange(startDate: start, endDate: end));

    // 当前第一周位置
    _selectedWeek = indexOfFirstSunday == 0 ? 0 : 1;
    // 若首周不完整且当前日子在首周后，计算对应的周数
    if (indexOfFirstSunday >= 0 && initial.day > indexOfFirstSunday) {
      _selectedWeek += ((initial.day - indexOfFirstSunday) / 7).ceil();
    }
    logDebug(
      ''
          '日历初始化\n'
          '初始化日期: $initial\n'
          '首周日位置: $indexOfFirstSunday\n'
          '当前第$_selectedWeek周\n'
          '周列表$_rangeList\n',
      '',
    );

    final index = _selectedWeek - 1;
    final initialRange = _rangeList[index];
    setState(() {
      // 初始化回调
      widget.onWeekdayRangeSelected?.call(initialRange);
    });
    // 下一帧渲染后滚动到列表所选中的目标位置
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _scrollController.jumpTo(index: _selectedWeek - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    final itemBuilder = widget.weekItemBuilder;
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: ScrollablePositionedList.separated(
        itemScrollController: _scrollController,
        itemPositionsListener: _positionsListener,
        scrollDirection: Axis.horizontal,
        padding: widget.padding,
        itemBuilder: (context, index) {
          final week = index + 1;
          final selected = _selectedWeek == week;
          if (itemBuilder != null) {
            onPressed() {
              setState(() => _selectedWeek = week);
              final range = _rangeList[index];
              widget.onWeekdayRangeSelected?.call(range);
            }

            return itemBuilder.call(week, selected, onPressed);
          }
          return _WeekButton(
            week: week,
            selected: selected,
            selectedDecoration: widget.selectedDecoration,
            onPressed: () {
              setState(() => _selectedWeek = week);
              final range = _rangeList[index];
              widget.onWeekdayRangeSelected?.call(range);
            },
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 12.w),
        itemCount: _rangeList.length,
      ),
    );
  }
}

class _WeekdayItem extends StatelessWidget {
  const _WeekdayItem({
    this.selected = false,
    this.disabled = false,
    required this.now,
    required this.dateTime,
    this.selectedDecoration,
    this.marker,
    this.onPressed,
  });

  final bool selected;
  final bool disabled;
  final DateTime now;
  final DateTime dateTime;
  final Widget? selectedDecoration;
  final Widget? marker;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<DateSelectorTheme>();
    final today = now.month == dateTime.month && now.day == dateTime.day;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              margin: REdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: selected ? theme?.weekdayHighlightBackground : null,
                border: Border.all(
                  color:
                      (selected ? theme?.weekdayHighlightBorderColor : null) ??
                          Colors.transparent,
                  width: 1.p,
                ),
                borderRadius: BorderRadius.circular(40.r),
              ),
              child: TextButton(
                onPressed: onPressed,
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: REdgeInsets.symmetric(horizontal: 5, vertical: 7),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      today ? '今' : dateTime.chineseWeekday(true),
                      style: TextStyle(
                        color: disabled
                            ? theme?.weekdayDisabledTextColor
                            : selected
                                ? theme?.weekdayHighlightTextColor
                                : theme?.weekdayNormalTextColor,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(padding: REdgeInsets.only(top: 15)),
                    Text(
                      dateTime.day.toString(),
                      style: TextStyle(
                        color: disabled
                            ? theme?.weekdayDisabledTextColor
                            : selected
                                ? theme?.weekdayHighlightTextColor
                                : theme?.weekdayNormalTextColor,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (selected && selectedDecoration != null)
              Positioned(
                left: 2.w,
                top: 20.h,
                child: selectedDecoration!,
              ),
          ],
        ),
        Padding(padding: REdgeInsets.only(top: 4)),
        if (marker != null) marker!,
      ],
    );
  }
}

typedef MarkerBuilder = Widget? Function(
    bool disabled, bool selected, DateTime dateTime);
typedef OnWeekdayPressed = Function(DateTime dateTime);
typedef DisabledCondition = bool Function(DateTime dateTime);

/// 周内日期选择器
class WeekdaySelector extends StatefulWidget {
  const WeekdaySelector({
    this.height,
    this.padding,
    required this.weekdayRange,
    required this.selectedDate,
    this.selectedDecoration,
    this.disabledCondition = _disableWeekend,
    this.markerBuilder,
    this.onWeekdayPressed,
    super.key,
  });

  final double? height;
  final EdgeInsetsGeometry? padding;
  final WeekdayRange weekdayRange;
  final DateTime selectedDate;
  final Widget? selectedDecoration;
  final DisabledCondition disabledCondition;
  final MarkerBuilder? markerBuilder;
  final OnWeekdayPressed? onWeekdayPressed;

  static bool _disableWeekend(DateTime dateTime) {
    return dateTime.weekday == DateTime.saturday ||
        dateTime.weekday == DateTime.sunday;
  }

  @override
  State<WeekdaySelector> createState() => _WeekdaySelectorState();
}

class _WeekdaySelectorState extends State<WeekdaySelector> {
  final DateTime _now = DateTime.now();
  var _list = List<DateTime>.empty();
  late DateTime _selectedDate = widget.selectedDate;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => _initTableCalendar());
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.weekdayRange != widget.weekdayRange ||
        oldWidget.selectedDate != widget.selectedDate) {
      _selectedDate = widget.selectedDate;
      _initTableCalendar();
    }
  }

  void _initTableCalendar() {
    // 根据传入日期范围生成日期列表
    final startDate = widget.weekdayRange.startDate;
    final firstDayOfWeek = startDate.weekday == DateTime.sunday
        ? startDate
        : startDate.add(Duration(days: -startDate.weekday));
    _list = List.generate(7, (index) {
      return firstDayOfWeek.add(Duration(days: index));
    });
    logDebug('list: $_list');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<DateSelectorTheme>();
    return Container(
      height: widget.height,
      padding: widget.padding,
      margin: REdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: theme?.weekdayContainerBackground,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _list.map((dateTime) {
          final disabled = widget.disabledCondition(dateTime);
          final selected = dateTime.month == _selectedDate.month &&
              dateTime.day == _selectedDate.day;
          final child = _WeekdayItem(
            now: _now,
            dateTime: dateTime,
            selected: selected,
            disabled: disabled,
            selectedDecoration: widget.selectedDecoration,
            marker: widget.markerBuilder?.call(disabled, selected, dateTime),
            onPressed: widget.onWeekdayPressed == null
                ? null
                : () {
                    setState(() => _selectedDate = dateTime);
                    widget.onWeekdayPressed?.call(dateTime);
                  },
          );
          return Expanded(child: child);
        }).toList(),
      ),
    );
  }
}
