import 'package:components/theme/main_theme.dart';
import 'package:components/widget/time/warpper_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NamingTextField extends StatelessWidget {
  const NamingTextField({required this.controller, super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return WrapperBox(
      marginBottom: 4.h,
      title: "给这份纪念起个名字",
      child: TextField(
        controller: controller,
        style: TextStyle(
          color: mainTheme?.titleColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintText: '请输入名字',
          hintStyle: TextStyle(
            color: mainTheme?.hintTextColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none,
        ),
        textInputAction: TextInputAction.next,
      ),
    );
  }
}
