import 'package:components/model/time_models.dart';
import 'package:components/theme/time_theme.dart';
import 'package:components/util/grid_view_height.dart';
import 'package:components/widget/time/warpper_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const _crossAxisCount = 5;

typedef OnTagPressed = Function(CatalogType catalog);

class TagList extends StatelessWidget {
  const TagList({this.selectedTag, this.onTap, super.key});

  final CatalogType? selectedTag;
  final OnTagPressed? onTap;

  @override
  Widget build(BuildContext context) {
    final timeTheme = Theme.of(context).extension<TimeTheme>();
    return WrapperBox(
      title: "记录宝宝的",
      child: SizedBox(
        height: getGridViewHeight(_crossAxisCount, timeTags.length, 20.h, 4.h),
        child: GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: timeTags.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _crossAxisCount,
            mainAxisSpacing: 4.h,
            crossAxisSpacing: 4.w,
            childAspectRatio: 3.w / 1.h,
          ),
          itemBuilder: (context, index) {
            var tab = timeTags[index];
            var isActive = selectedTag == tab;
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isActive
                    ? timeTheme?.tagSelectedBackground
                    : timeTheme?.tagUnselectedBackground,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: InkWell(
                onTap: () => onTap?.call(tab),
                child: Text(
                  tab.display,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: isActive
                        ? timeTheme?.tagSelectedTextColor
                        : timeTheme?.tagUnselectedTextColor,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
