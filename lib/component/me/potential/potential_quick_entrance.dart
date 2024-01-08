import 'dart:collection';

import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/auth_service.dart';
import 'package:bsl/management/services/repository_service.dart';
import 'package:bsl/model/navigation_model.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/theme/me_theme.dart';
import 'package:bsl/widget/me/entrance_button.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PotentialQuickEntrance extends StatefulWidget {
  const PotentialQuickEntrance({super.key});

  @override
  State<PotentialQuickEntrance> createState() => _PotentialQuickEntranceState();
}

class _PotentialQuickEntranceState extends State<PotentialQuickEntrance> {
  final _repository = Get.find<RepositoryService>().commonRepository;

  CancelToken? _cancelToken;

  var _quickEntrances = [
    AppEntranceModel(
      local: Assets.me.lessonManagementIcon.path,
      functionName: '课时管理',
      function: QuickEntrance(QuickEntranceType.lessonManagement),
      onTap: (entrance) {
        final user = Get.find<AuthService>().user.value;
        const url = 'student/chcare/classHourMng/pickSchool';
        final parameters = {
          'url': url,
          'params': Uri(queryParameters: {'phone': user.phoneNumber}).query
        };
        Get.toNamed('browser', parameters: parameters);
      },
    ),
    AppEntranceModel(
      local: Assets.me.settingIcon.path,
      functionName: '设置',
      function: QuickEntrance(QuickEntranceType.setting),
      display: true,
      onTap: (entrance) => Get.toNamed('setting'),
    ),
  ];

  void _fetchData() async {
    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchQuickEntranceConfig(
        '-1',
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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _fetchData());
  }

  @override
  void didUpdateWidget(covariant PotentialQuickEntrance oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        final resetEntrances =
            _quickEntrances.map((element) => element..display = false).toList();
        _quickEntrances = resetEntrances;
        _fetchData();
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
}
