import 'dart:ui' as ui;

import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/util/image_utils.dart';
import 'package:components/widget/common/indicator_asset_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeekPlanTabBar extends StatefulWidget {
  const WeekPlanTabBar({required this.controller, this.onTap, super.key});

  final TabController controller;
  final ValueChanged<int>? onTap;

  @override
  State createState() => _WeekPlanTabBarState();
}

class _WeekPlanTabBarState extends State<WeekPlanTabBar> {
  ui.Image? _decoration;

  @override
  void initState() {
    super.initState();
    _loadAssetImage();
  }

  void _loadAssetImage() async {
    final decoration =
        await getAssetImage(Assets.weekplan.titleDecoration.path);
    setState(() => _decoration = decoration);
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Container(
      alignment: Alignment.centerLeft,
      margin: REdgeInsets.only(left: 4),
      child: TabBar(
        onTap: widget.onTap,
        isScrollable: true,
        dividerHeight: 0,
        tabAlignment: TabAlignment.start,
        controller: widget.controller,
        padding: EdgeInsets.zero,
        labelPadding: REdgeInsets.symmetric(horizontal: 15),
        physics: const NeverScrollableScrollPhysics(),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: _decoration == null
            ? null
            : IndicatorAssetDecoration(image: _decoration!),
        labelColor: mainTheme?.titleColor,
        labelStyle: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: mainTheme?.titleColor,
        unselectedLabelStyle: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
        ),
        tabs: [
          Container(
            width: 101.w,
            height: 35.h,
            alignment: Alignment.bottomLeft,
            margin: REdgeInsets.only(left: 2),
            child: const Text('当日计划'),
          ),
          Container(
            width: 86.w,
            height: 35.h,
            alignment: Alignment.bottomLeft,
            margin: REdgeInsets.only(left: 2),
            child: const Text('周目标'),
          ),
        ],
      ),
    );
  }
}
