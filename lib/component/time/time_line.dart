import 'dart:math';

import 'package:components/component/time/time_list.dart';
import 'package:components/management/controller/time/timeline_controller.dart';
import 'package:components/management/controller/time/timelist_controller.dart';
import 'package:components/model/time_models.dart';
import 'package:components/resource/colors.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/time_theme.dart';
import 'package:components/util/screen_utils.dart';
import 'package:components/widget/common/empty.dart';
import 'package:components/widget/common/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({required this.catalog, required this.controller, super.key});

  final CatalogType catalog;
  final TimelineController controller;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: ColorName.mainColor,
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      onRefresh: () async {
        await controller.onRefresh();
      },
      child: Obx(
        () {
          final yearList = controller.yearList.value;
          final rebuild = controller.rebuildIndex.value;
          if (yearList.isEmpty) {
            return Center(
              child: Padding(
                padding: REdgeInsets.only(top: 80),
                child: const EmptyWidget(),
              ),
            );
          }
          return ListView.builder(
            key: ValueKey(rebuild),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final year = yearList[index];
              return _YearList(catalog: catalog, year: year);
            },
            itemCount: yearList.length,
          );
        },
      ),
    );
  }
}

class _YearList extends StatefulWidget {
  const _YearList({required this.catalog, required this.year});

  final CatalogType catalog;
  final int year;

  @override
  State<_YearList> createState() => _YearListState();
}

class _YearListState extends State<_YearList> {
  final _controller = ExpandableController(initialExpanded: true);

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final timeTheme = Theme.of(context).extension<TimeTheme>();
    return ExpandableNotifier(
      controller: _controller,
      child: ExpandablePanel(
        controller: _controller,
        collapsed: _header(mainTheme, timeTheme, true),
        expanded: Column(
          children: [
            _header(mainTheme, timeTheme, false),
            _child(),
          ],
        ),
      ),
    );
  }

  Widget _header(MainTheme? mainTheme, TimeTheme? timeTheme, bool collapsed) {
    return Container(
      margin: REdgeInsets.symmetric(horizontal: 16),
      padding: REdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: timeTheme?.dividerColor ?? Colors.transparent,
            width: 1.p,
          ),
        ),
      ),
      child: TextButton(
        onPressed: () => _controller.toggle(),
        child: Row(
          children: [
            Expanded(
              child: Text(
                widget.year.toString(),
                style: TextStyle(
                  color: timeTheme?.yearTextColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Transform.rotate(
              angle: collapsed ? pi : 0,
              child: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: mainTheme?.subTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _child() {
    final year = widget.year;
    return GetBuilder(
      tag: '${widget.catalog.toString()}$year',
      init: TimeListController(
        year,
        widget.catalog,
      ),
      builder: (controller) {
        return Padding(
          padding: REdgeInsets.symmetric(horizontal: 16),
          child: TimeList(
            year: year,
            catalog: widget.catalog,
            controller: controller,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
