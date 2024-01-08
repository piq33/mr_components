import 'dart:async';
import 'dart:ui' as ui;

import 'package:components/component/time/time_line.dart';
import 'package:components/event/timeline_event.dart';
import 'package:components/management/controller/time/timeline_controller.dart';
import 'package:components/management/mobx/time/time_store.dart';
import 'package:components/management/services/student_service.dart';
import 'package:components/model/time_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/time_theme.dart';
import 'package:components/util/global.dart';
import 'package:components/util/image_utils.dart';
import 'package:components/widget/common/indicator_asset_decoration.dart';
import 'package:components/widget/time/header.dart';
import 'package:extended_tabs/extended_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TimeBody extends StatefulWidget {
  const TimeBody({required this.store, super.key});

  final TimeStore store;

  @override
  State<TimeBody> createState() => _TimeBodyState();
}

class _TimeBodyState extends State<TimeBody>
    with SingleTickerProviderStateMixin {
  final _service = Get.find<StudentService>();
  final _tags = [CatalogType.all, ...timeTags];

  late TabController _tabController;
  StreamSubscription? _subscription;
  ui.Image? _decoration;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _tags.length,
      vsync: this,
    )..addListener(() {
        if (_tabController.indexIsChanging) return;
        widget.store.selectTab(_tabController.index);
      });

    _subscription = eventBus.on<RefreshTimelineEvent>().listen((event) {
      if (event.catalogs.isEmpty) return;
      final catalog = event.catalogs.first;
      var index = _tags.indexWhere((i) => i == catalog);
      _tabController.index = index;
    });

    _loadAssetImage();
  }

  void _loadAssetImage() async {
    final decoration = await getAssetImage(Assets.time.tabDecoration.path);
    setState(() => _decoration = decoration);
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final timeTheme = Theme.of(context).extension<TimeTheme>();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.time.background.provider(),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: REdgeInsets.only(top: 54)),
          Obx(() {
            final student = _service.selectedStudent.value;
            return Header(
              age: student.age,
              gender: student.sex,
              avatar: student.avatar,
              studentName: student.name ?? '',
              onAvatarPressed: () {
                if (student.hasPotentialId) return;
                final parameters = {'studentCode': student.studentCode};
                Get.toNamed('studentInfo', parameters: parameters);
              },
              onMomentPressed: () => Get.toNamed('album'),
              onDiyPressed: () => Get.toNamed('diy'),
            );
          }),
          Padding(padding: REdgeInsets.only(top: 20)),
          Expanded(
            child: Container(
              padding: REdgeInsets.only(top: 12, bottom: 5),
              decoration: BoxDecoration(
                color: timeTheme?.bodyBackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TabBar(
                    isScrollable: true,
                    dividerHeight: 0,
                    tabAlignment: TabAlignment.start,
                    padding: REdgeInsets.only(left: 10, bottom: 10, right: 10),
                    controller: _tabController,
                    labelPadding: REdgeInsets.symmetric(horizontal: 5),
                    labelColor: mainTheme?.titleColor,
                    labelStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    unselectedLabelColor: mainTheme?.subTextColor,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: _decoration == null
                        ? null
                        : IndicatorAssetDecoration(image: _decoration!),
                    tabs: _tags.map(
                      (tab) {
                        var text = tab.display;
                        text = text.length < 4 ? text.padRight(4, ' ') : text;
                        return Container(
                          height: 28.h,
                          width: 88.w,
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            text,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      },
                    ).toList(),
                  ),
                  Expanded(
                    child: ExtendedTabBarView(
                      controller: _tabController,
                      cacheExtent: _tags.length - 1,
                      children: _tags.map((tab) {
                        final catalog = tab;
                        return GetBuilder(
                          tag: catalog.toString(),
                          init: TimelineController(catalog),
                          builder: (controller) {
                            return TimeLine(
                              catalog: catalog,
                              controller: controller,
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _tabController.dispose();
    super.dispose();
  }
}
