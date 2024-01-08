import 'dart:collection';

import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/model/navigation_model.dart';
import 'package:components/model/school_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/me_theme.dart';
import 'package:components/widget/me/entrance_button.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FormalQuickEntrance extends StatefulWidget {
  const FormalQuickEntrance({required this.student, super.key});

  final StudentModel student;

  @override
  State<FormalQuickEntrance> createState() => _FormalQuickEntranceState();
}

class _FormalQuickEntranceState extends State<FormalQuickEntrance> {
  final _repository = Get.find<RepositoryService>().commonRepository;

  CancelToken? _cancelToken;

  var _quickEntrances = [
    AppEntranceModel(
      local: Assets.me.todoIcon.path,
      functionName: '代办',
      function: QuickEntrance(QuickEntranceType.todo),
      onTap: (entrance) => Get.toNamed('todo'),
    ),
    AppEntranceModel(
      local: Assets.me.settingIcon.path,
      functionName: '设置',
      function: QuickEntrance(QuickEntranceType.setting),
      onTap: (entrance) => Get.toNamed('setting'),
    ),
    AppEntranceModel(
      local: Assets.me.lessonManagementIcon.path,
      functionName: '课时管理',
      function: QuickEntrance(QuickEntranceType.lessonManagement),
      onTap: (entrance) {
        const url = 'student/chcare/classHourMng/recharge';
        final parameters = {'url': url};
        Get.toNamed('browser', parameters: parameters);
      },
    ),
    AppEntranceModel(
      local: Assets.navigation.couponIcon.path,
      functionName: '我的券包',
      function: QuickEntrance(QuickEntranceType.voucher),
      onTap: (entrance) {
        const url = 'student/coupon/myCoupon';
        final parameters = {'url': url};
        Get.toNamed('browser', parameters: parameters);
      },
    ),
  ];

  void _fetchData(String schoolCode) async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchQuickEntranceConfig(
        schoolCode,
        _cancelToken,
      );
      if (r.success) {
        final List<AppEntranceModel> list = r.data;
        final map = HashMap<QuickEntranceType, AppEntranceModel>();
        for (var e in list) {
          final function = e.function;
          if (function is! QuickEntrance) continue;

          map[function.type] = e;
        }

        for (var e in _quickEntrances) {
          final function = e.function;
          if (function is! QuickEntrance) continue;

          final source = map[function.type];
          if (source != null) e.copyWith(source);
        }
        // 排序
        _quickEntrances.sort((a, b) => a.seq.compareTo(b.seq));
        setState(() {});
      }
    } catch (e, stackTrace) {
      logError('获取快捷入口配置数据失败: ${e.toString()}', e, stackTrace);
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final schoolCode = widget.student.schoolCode;
      if (schoolCode == null || schoolCode.isEmpty) {
        logWarning('该学生无绑定学校，无法获取快捷入口配置');
        return;
      }
      _fetchData(schoolCode);
    });
  }

  @override
  void didUpdateWidget(covariant FormalQuickEntrance oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        final resetEntrances =
            _quickEntrances.map((element) => element..display = false).toList();
        _quickEntrances = resetEntrances;
        final schoolCode = widget.student.schoolCode;
        if (schoolCode == null || schoolCode.isEmpty) {
          logWarning('该学生无绑定学校，无法获取快捷入口配置');
          return;
        }
        _fetchData(schoolCode);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final displayList =
        _quickEntrances.where((element) => element.display).toList();
    if (displayList.isEmpty) return const SizedBox();

    final mainTheme = Theme.of(context).extension<MainTheme>();
    final meTheme = Theme.of(context).extension<MeTheme>();
    return Container(
      margin: REdgeInsets.only(left: 16, top: 16, right: 16),
      padding: REdgeInsets.all(15),
      decoration: BoxDecoration(
        color: meTheme?.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1.r),
            blurRadius: 12.r,
            color: meTheme?.cardBoxShadow ?? Colors.transparent,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '快捷入口',
            style: TextStyle(
              color: mainTheme?.titleColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            padding: REdgeInsets.only(top: 20),
            children:
                displayList.map((e) => EntranceButton(entrance: e)).toList(),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _cancelToken?.cancel('dispose');
    super.dispose();
  }
}
