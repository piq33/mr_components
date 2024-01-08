import 'package:components/log/global_log.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/util/screen_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sprintf/sprintf.dart';

double _kItemExtent = 50.h;
const bool _kUseMagnifier = true;
const double _kMagnification = 2.35 / 2.1;
const double _kSqueeze = 1.18;

const TextStyle _kDefaultPickerTextStyle = TextStyle(letterSpacing: -0.83);

typedef OnDateTimeSelected = Function(DateTime? dateTime);

void _animateColumnControllerToItem(
    FixedExtentScrollController controller, int targetItem) {
  controller.animateToItem(
    targetItem,
    curve: Curves.easeInOut,
    duration: const Duration(milliseconds: 200),
  );
}

TextStyle _themeTextStyle(BuildContext context) {
  final theme = Theme.of(context).extension<MainTheme>();
  return TextStyle(
    color: theme?.titleColor,
    fontSize: 19.sp,
    fontWeight: FontWeight.w500,
  );
}

class _DateBottomPickerSelectionOverlay extends StatelessWidget {
  const _DateBottomPickerSelectionOverlay({
    this.width,
    this.height,
    this.alignment,
    this.child,
  });

  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: alignment,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: const Color(0xFFE4EEF5), width: 1.r),
        ),
      ),
      child: child,
    );
  }
}

enum PickerType { year, month, day }

class DateBottomPicker extends StatefulWidget {
  DateBottomPicker({
    this.onDateTimeChanged,
    DateTime? initialDateTime,
    List<PickerType>? columns,
    this.minimumDate,
    this.maximumDate,
    this.minimumYear = 1970,
    this.maximumYear,
    this.backgroundColor,
    required this.title,
    this.cancelText = '取消',
    this.confirmText = '确认',
    this.onCancel,
    this.onConfirm,
    super.key,
  })  : columns =
            columns ?? [PickerType.year, PickerType.month, PickerType.day],
        initialDateTime = initialDateTime ?? DateTime.now();

  final DateTime initialDateTime;
  final List<PickerType> columns;
  final DateTime? minimumDate;
  final DateTime? maximumDate;
  final int minimumYear;
  final int? maximumYear;
  final Color? backgroundColor;
  final ValueChanged<DateTime>? onDateTimeChanged;
  final String title;
  final String cancelText;
  final String confirmText;
  final VoidCallback? onCancel;
  final OnDateTimeSelected? onConfirm;

  @override
  State<DateBottomPicker> createState() => _DateBottomPickerState();
}

class _DateBottomPickerState extends State<DateBottomPicker> {
  late CupertinoLocalizations localizations;

  late int selectedDay;
  late int selectedMonth;
  late int selectedYear;

  bool isDayPickerScrolling = false;
  bool isMonthPickerScrolling = false;
  bool isYearPickerScrolling = false;

  bool get isScrolling =>
      isDayPickerScrolling || isMonthPickerScrolling || isYearPickerScrolling;

  late FixedExtentScrollController _yearScrollController;
  late FixedExtentScrollController _monthScrollController;
  late FixedExtentScrollController _dayScrollController;

  @override
  void initState() {
    super.initState();
    selectedYear = widget.initialDateTime.year;
    if (widget.columns.contains(PickerType.month)) {
      selectedMonth = widget.initialDateTime.month;
    } else {
      selectedMonth = 1;
    }
    if (widget.columns.contains(PickerType.day)) {
      selectedDay = widget.initialDateTime.day;
    } else {
      selectedDay = 1;
    }

    _dayScrollController =
        FixedExtentScrollController(initialItem: selectedDay - 1);
    _monthScrollController =
        FixedExtentScrollController(initialItem: selectedMonth - 1);
    _yearScrollController =
        FixedExtentScrollController(initialItem: selectedYear);
  }

  @override
  void dispose() {
    _dayScrollController.dispose();
    _monthScrollController.dispose();
    _yearScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final showYear = widget.columns.contains(PickerType.year);
    final showMonth = widget.columns.contains(PickerType.month);
    final showDay = widget.columns.contains(PickerType.day);
    final theme = Theme.of(context).extension<MainTheme>();
    final children = <Widget>[
      if (showYear) Flexible(flex: 2, child: _buildYearPicker(context)),
      if (showYear)
        _DateBottomPickerSelectionOverlay(
          width: 50.w,
          height: _kItemExtent * _kMagnification,
          alignment: Alignment.centerLeft,
          child: Text(
            '年',
            style: TextStyle(
              color: theme?.textColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      if (showMonth) Flexible(child: _buildMonthPicker(context)),
      if (showMonth)
        _DateBottomPickerSelectionOverlay(
          width: 50.w,
          height: _kItemExtent * _kMagnification,
          alignment: Alignment.centerLeft,
          child: Text(
            '月',
            style: TextStyle(
              color: theme?.textColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      if (showDay) Flexible(child: _buildDayPicker(context)),
      if (showDay)
        _DateBottomPickerSelectionOverlay(
          width: 50.w,
          height: _kItemExtent * _kMagnification,
          alignment: Alignment.centerLeft,
          child: Text(
            '日',
            style: TextStyle(
              color: theme?.textColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
    ];
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: DefaultTextStyle.merge(
        style: _kDefaultPickerTextStyle,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: REdgeInsets.only(left: 20)),
                TextButton(
                  onPressed: widget.onCancel,
                  style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: REdgeInsets.all(16),
                  ),
                  child: Text(
                    widget.cancelText,
                    style: TextStyle(
                      color: theme?.bottomSheetCancelTextColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        color: theme?.titleColor,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    final result =
                        DateTime(selectedYear, selectedMonth, selectedDay);
                    logDebug('选择时间: $result');
                    widget.onConfirm?.call(result);
                  },
                  style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: REdgeInsets.all(16),
                  ),
                  child: Text(
                    widget.confirmText,
                    style: TextStyle(
                      color: theme?.bottomSheetConfirmTextColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(padding: REdgeInsets.only(right: 20)),
              ],
            ),
            Container(height: 1.p, color: theme?.dividerColor),
            Container(
              height: 262.h,
              padding: REdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: children,
              ),
            ),
          ],
        ),
      ),
    );
  }

  DateTime _lastDayInMonth(int year, int month) => DateTime(year, month + 1, 0);

  Widget _buildDayPicker(BuildContext context) {
    final int daysInCurrentMonth =
        _lastDayInMonth(selectedYear, selectedMonth).day;
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification notification) {
        if (notification is ScrollStartNotification) {
          isDayPickerScrolling = true;
        } else if (notification is ScrollEndNotification) {
          isDayPickerScrolling = false;
          _pickerDidStopScrolling();
        }

        return false;
      },
      child: CupertinoPicker(
        scrollController: _dayScrollController,
        itemExtent: _kItemExtent,
        useMagnifier: _kUseMagnifier,
        magnification: _kMagnification,
        backgroundColor: widget.backgroundColor,
        squeeze: _kSqueeze,
        onSelectedItemChanged: (int index) {
          selectedDay = index + 1;
          if (_isCurrentDateValid) {
            widget.onDateTimeChanged?.call(
              DateTime(selectedYear, selectedMonth, selectedDay),
            );
          }
        },
        looping: true,
        selectionOverlay: const _DateBottomPickerSelectionOverlay(),
        children: List<Widget>.generate(daysInCurrentMonth, (int index) {
          final int day = index + 1;
          return Center(
            child: Text(
              sprintf('%02d', [day]),
              style: _themeTextStyle(context),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildMonthPicker(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification notification) {
        if (notification is ScrollStartNotification) {
          isMonthPickerScrolling = true;
        } else if (notification is ScrollEndNotification) {
          isMonthPickerScrolling = false;
          _pickerDidStopScrolling();
        }

        return false;
      },
      child: CupertinoPicker(
        scrollController: _monthScrollController,
        itemExtent: _kItemExtent,
        useMagnifier: _kUseMagnifier,
        magnification: _kMagnification,
        backgroundColor: widget.backgroundColor,
        squeeze: _kSqueeze,
        onSelectedItemChanged: (int index) {
          selectedMonth = index + 1;
          if (_isCurrentDateValid) {
            widget.onDateTimeChanged?.call(
              DateTime(selectedYear, selectedMonth, selectedDay),
            );
          }
        },
        looping: true,
        selectionOverlay: const _DateBottomPickerSelectionOverlay(),
        children: List<Widget>.generate(12, (int index) {
          final int month = index + 1;
          return Center(
            child: Text(
              sprintf('%02d', [month]),
              style: _themeTextStyle(context),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildYearPicker(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification notification) {
        if (notification is ScrollStartNotification) {
          isYearPickerScrolling = true;
        } else if (notification is ScrollEndNotification) {
          isYearPickerScrolling = false;
          _pickerDidStopScrolling();
        }

        return false;
      },
      child: CupertinoPicker.builder(
        scrollController: _yearScrollController,
        itemExtent: _kItemExtent,
        useMagnifier: _kUseMagnifier,
        magnification: _kMagnification,
        backgroundColor: widget.backgroundColor,
        squeeze: _kSqueeze,
        onSelectedItemChanged: (int index) {
          selectedYear = index;
          if (_isCurrentDateValid) {
            widget.onDateTimeChanged?.call(
              DateTime(selectedYear, selectedMonth, selectedDay),
            );
          }
        },
        selectionOverlay: const _DateBottomPickerSelectionOverlay(),
        itemBuilder: (BuildContext context, int year) {
          if (year < widget.minimumYear) {
            return null;
          }

          if (widget.maximumYear != null && year > widget.maximumYear!) {
            return null;
          }
          return Center(
            child: Text(
              year.toString(),
              style: _themeTextStyle(context),
            ),
          );
        },
      ),
    );
  }

  void _pickerDidStopScrolling() {
    // Call setState to update the greyed out days/months/years, as the currently
    // selected year/month may have changed.
    setState(() {});

    if (isScrolling) {
      return;
    }

    // Whenever scrolling lands on an invalid entry, the picker
    // automatically scrolls to a valid one.
    final DateTime minSelectDate =
        DateTime(selectedYear, selectedMonth, selectedDay);
    final DateTime maxSelectDate =
        DateTime(selectedYear, selectedMonth, selectedDay + 1);

    final bool minCheck = widget.minimumDate?.isBefore(maxSelectDate) ?? true;
    final bool maxCheck = widget.maximumDate?.isBefore(minSelectDate) ?? false;

    if (!minCheck || maxCheck) {
      // We have minCheck === !maxCheck.
      final DateTime targetDate =
          minCheck ? widget.maximumDate! : widget.minimumDate!;
      _scrollToDate(targetDate);
      return;
    }

    // Some months have less days (e.g. February). Go to the last day of that month
    // if the selectedDay exceeds the maximum.
    if (minSelectDate.day != selectedDay) {
      final DateTime lastDay = _lastDayInMonth(selectedYear, selectedMonth);
      _scrollToDate(lastDay);
    }
  }

  bool get _isCurrentDateValid {
    // The current date selection represents a range [minSelectedData, maxSelectDate].
    final DateTime minSelectedDate =
        DateTime(selectedYear, selectedMonth, selectedDay);
    final DateTime maxSelectedDate =
        DateTime(selectedYear, selectedMonth, selectedDay + 1);

    final bool minCheck = widget.minimumDate?.isBefore(maxSelectedDate) ?? true;
    final bool maxCheck =
        widget.maximumDate?.isBefore(minSelectedDate) ?? false;

    return minCheck && !maxCheck && minSelectedDate.day == selectedDay;
  }

  void _scrollToDate(DateTime newDate) {
    SchedulerBinding.instance.addPostFrameCallback((Duration timestamp) {
      if (selectedYear != newDate.year) {
        _animateColumnControllerToItem(_yearScrollController, newDate.year);
      }

      if (selectedMonth != newDate.month) {
        _animateColumnControllerToItem(
            _monthScrollController, newDate.month - 1);
      }

      if (selectedDay != newDate.day) {
        _animateColumnControllerToItem(_dayScrollController, newDate.day - 1);
      }
    });
  }
}
