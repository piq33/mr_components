import 'package:components/log/global_log.dart';
import 'package:components/management/controller/recipes/recipes_controller.dart';
import 'package:components/model/recipes_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/recipes_theme.dart';
import 'package:components/util/date_utils.dart';
import 'package:components/util/list_utils.dart';
import 'package:components/widget/common/date_selector.dart';
import 'package:components/widget/common/empty.dart';
import 'package:components/widget/recipes/menu_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' hide FirstWhereExt;
import 'package:intl/intl.dart';

class RecipesBody extends StatefulWidget {
  const RecipesBody({this.initialDate, super.key});

  final String? initialDate;

  @override
  State createState() => _RecipesBodyState();
}

class _RecipesBodyState extends State<RecipesBody> {
  final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);
  final _controller = Get.find<RecipesController>();

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
      logError('餐谱指定日期异常', e, stackTrace);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<RecipesTheme>();
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
                  '食谱当前选中周\n'
                  '起始: ${range.startDate}\n'
                  '结束: ${range.endDate}\n'
                  '');
              _controller.selectedWeekRange.value = range;
            },
          );
        }),
        Padding(padding: REdgeInsets.only(top: 15)),
        Obx(() {
          final range = _controller.selectedWeekRange.value;
          final recipes = _controller.recipes;
          final rangeRecipes = List<MenuModel>.empty(growable: true);
          for (var menu in recipes) {
            if (menu.currDate?.inside(range.startDate, range.endDate) ??
                false) {
              rangeRecipes.add(menu);
            }
          }
          return WeekdaySelector(
            weekdayRange: range,
            padding: REdgeInsets.only(top: 8, bottom: 15),
            selectedDate: _controller.selectedDay.value,
            selectedDecoration: Image.asset(
              Assets.recipes.weekdaySelectedDecoration.path,
              height: 18.h,
              fit: BoxFit.fitHeight,
            ),
            // 所选择的日期范围以外的日期以及周末不可点击
            disabledCondition: (dateTime) {
              final itemList = rangeRecipes
                      .firstWhereOrNull(
                        (element) =>
                            element.currDate?.sameMonthDay(dateTime) ?? false,
                      )
                      ?.itemList ??
                  List.empty();
              return dateTime.isBefore(range.startDate) ||
                  dateTime.isAfter(range.endDate) ||
                  itemList.isEmpty;
            },
            // 对应日期菜单列表不为空则显示标记
            markerBuilder: (disabled, selected, dateTime) {
              final itemList = rangeRecipes
                      .firstWhereOrNull(
                        (element) =>
                            element.currDate?.sameMonthDay(dateTime) ?? false,
                      )
                      ?.itemList ??
                  List.empty();
              final markerColor = itemList.isNotEmpty
                  ? theme?.recipesMarkerColor
                  : Colors.transparent;
              return Container(
                width: 4.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: !disabled ? markerColor : Colors.transparent,
                  shape: BoxShape.circle,
                ),
              );
            },
            onWeekdayPressed: (day) {
              _controller.selectedDay.value = day;
            },
          );
        }),
        Padding(padding: REdgeInsets.only(top: 15)),
        Obx(() {
          final loading = _controller.loading.value;
          final selectedMenu = _controller.selectedRecipes.value.itemList;
          return AnimatedOpacity(
            opacity: loading ? 0 : 1,
            duration: const Duration(milliseconds: 500),
            child: selectedMenu.isEmpty
                ? Container(
                    margin: REdgeInsets.only(top: 60),
                    child: const EmptyWidget(text: '暂无食谱~'),
                  )
                : MenuList(
                    key: ValueKey(selectedMenu),
                    list: selectedMenu,
                    onImagePressed: (url, tag) {
                      final parameters = {'url': url, 'tag': tag};
                      Get.toNamed('image', parameters: parameters);
                    },
                  ),
          );
        }),
      ],
    );
  }
}
