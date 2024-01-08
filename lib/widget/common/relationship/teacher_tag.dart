import 'package:bsl/theme/relationship_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeacherTag extends StatelessWidget {
  const TeacherTag({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<RelationshipTheme>();
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: theme?.teacherTagBackground,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 4.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: theme?.teacherTagTextColor,
              shape: BoxShape.circle,
            ),
          ),
          Padding(padding: REdgeInsets.only(left: 4)),
          Text(
            '老师',
            style: TextStyle(
              color: theme?.teacherTagTextColor,
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
