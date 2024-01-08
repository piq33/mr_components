import 'package:components/log/global_log.dart';
import 'package:components/management/mobx/conservation/daylife_store.dart';
import 'package:components/theme/date_selector_theme.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/date_selector.dart';
import 'package:components/widget/common/empty.dart';
import 'package:components/widget/conservation/daylife_item.dart';
import 'package:chinese_number/chinese_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class DayLifeBody extends StatelessWidget {
  const DayLifeBody({required this.store, super.key});

  final DayLifeStore store;

  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  @override
  Widget build(BuildContext context) {
    final dateSelectorTheme = Theme.of(context).extension<DateSelectorTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 12.h),
        Observer(
          builder: (context) {
            return WeekSelector(
              height: 44.h,
              selectedDate: store.selectedDate,
              weekItemBuilder: (week, selected, onPressed) {
                return Container(
                  decoration: BoxDecoration(
                    color: selected
                        ? dateSelectorTheme?.weekHighlightBackground
                        : dateSelectorTheme?.weekNormalBackground,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: TextButton(
                    onPressed: onPressed,
                    style: TextButton.styleFrom(
                      padding: REdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                    child: Text(
                      '第${week.toSimplifiedChineseNumber()}周',
                      style: TextStyle(
                        color: selected
                            ? dateSelectorTheme?.weekHighlightTextColor
                            : dateSelectorTheme?.weekNormalTextColor,
                        fontSize: 14.sp,
                        fontWeight:
                            selected ? FontWeight.w600 : FontWeight.w400,
                      ),
                    ),
                  ),
                );
              },
              onWeekdayRangeSelected: (range) {
                logDebug(''
                    '一日生活当前选中周\n'
                    '起始: ${range.startDate}\n'
                    '结束: ${range.endDate}\n'
                    '');
                store.selectWeekRange(range);
                store.fetchData(range.startDate, range.endDate);
              },
            );
          },
        ),
        Expanded(
          child: Observer(
            builder: (context) {
              final mainTheme = Theme.of(context).extension<MainTheme>();

              final loading = store.loading;
              final list = store.data;
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: loading
                    ? LoadingAnimationWidget.hexagonDots(
                        color: mainTheme?.loadingColor ?? Colors.transparent,
                        size: 40.r,
                      )
                    : list.isEmpty
                        ? const EmptyWidget()
                        : ListView.separated(
                            padding: REdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 16,
                            ),
                            itemBuilder: (context, index) {
                              final item = list[index];
                              return DayLifeItem(
                                dateTime: item.date,
                                days: item.days,
                                onPressed: () {
                                  String? date;
                                  if (item.date != null) {
                                    date = _dateFormat.format(item.date!);
                                  }
                                  final parameters =
                                      date != null ? {'date': date} : null;
                                  Get.toNamed('conservation/report',
                                      parameters: parameters);
                                },
                              );
                            },
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 20.h),
                            itemCount: list.length,
                          ),
              );
            },
          ),
        ),
      ],
    );
  }
}
