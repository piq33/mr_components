import 'package:components/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChildNameTextField extends StatelessWidget {
  const ChildNameTextField({required this.controller, super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '孩子姓名',
          style: TextStyle(
            color: mainTheme?.titleColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(padding: REdgeInsets.only(left: 8)),
        Flexible(
          child: TextField(
            controller: controller,
            textAlign: TextAlign.end,
            style: TextStyle(
              color: mainTheme?.titleColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.zero,
              hintText: '填写孩子真实姓名',
              hintStyle: TextStyle(
                color: mainTheme?.hintTextColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
