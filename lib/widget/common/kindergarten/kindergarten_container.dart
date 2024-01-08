import 'package:bsl/model/common_model.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const _maxDecoration = 9;

typedef OnKindergartenPressed = Function(KindergartenModel kindergarten);

class KindergartenContainer extends StatelessWidget {
  const KindergartenContainer({
    required this.region,
    required this.list,
    this.onPressed,
    super.key,
  });

  final RegionModel region;
  final List<KindergartenModel> list;
  final OnKindergartenPressed? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final codeUnits = region.name?.codeUnits ?? List.empty();
    final leftIndex = codeUnits.length > 2
        ? codeUnits[codeUnits.length - 2]
        : codeUnits.length == 1
            ? codeUnits.last
            : _maxDecoration;
    final rightIndex = codeUnits.isNotEmpty ? codeUnits.first : 1;
    return Container(
      margin: REdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 8.r,
          color: mainTheme?.kindergartenBorderColor ?? Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: REdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: mainTheme?.kindergartenTitleBackground,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: REdgeInsets.only(left: 10.w),
                  child: _decoration(_sum(leftIndex)),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      region.name ?? '',
                      style: TextStyle(
                        color: mainTheme?.titleColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: REdgeInsets.only(right: 10.w),
                  child: _decoration(_sum(rightIndex)),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final school = list[index];
              final borderRadius = index == (list.length - 1)
                  ? BorderRadius.only(
                      bottomLeft: Radius.circular(12.r),
                      bottomRight: Radius.circular(12.r),
                    )
                  : null;
              return Container(
                key: ObjectKey(school),
                decoration: BoxDecoration(
                  color: index.isEven
                      ? mainTheme?.kindergartenBackground1
                      : mainTheme?.kindergartenBackground2,
                  borderRadius: borderRadius,
                ),
                child: TextButton(
                  onPressed: () => onPressed?.call(school),
                  style: TextButton.styleFrom(
                    padding: REdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: borderRadius ?? BorderRadius.zero,
                    ),
                  ),
                  child: Text(
                    school.schoolName ?? '',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: mainTheme?.titleColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              );
            },
            itemCount: list.length,
          ),
        ],
      ),
    );
  }

  Widget _decoration(int index) {
    var decoration = index;
    if (decoration < 1) decoration = 1;
    if (decoration > _maxDecoration) decoration = _maxDecoration;
    return Image.asset(
      'assets/common/kindergarten/decoration$decoration.png',
      width: 24.w,
      height: 24.h,
      fit: BoxFit.contain,
    );
  }

  int _sum(int sum) {
    var t = sum;
    while (t > 9) {
      t = t ~/ 10 + t % 10;
    }
    return t;
  }
}
