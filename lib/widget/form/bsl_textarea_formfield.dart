import 'package:bsl/model/common_model.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BslTextAreaFormField extends StatelessWidget {
  const BslTextAreaFormField({
    this.width,
    this.height,
    required this.title,
    this.titleStyle,
    this.text,
    this.textStyle,
    this.hint,
    this.hintStyle,
    this.maxLines,
    this.readOnly = false,
    this.padding,
    this.margin,
    this.background,
    this.borderRadius,
    this.required = false,
    this.requiredAlign = RequiredAlign.end,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    super.key,
  });

  final double? width;
  final double? height;
  final String title;
  final TextStyle? titleStyle;
  final String? text;
  final TextStyle? textStyle;
  final String? hint;
  final TextStyle? hintStyle;
  final int? maxLines;
  final bool readOnly;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? background;
  final BorderRadiusGeometry? borderRadius;
  final bool required;
  final RequiredAlign requiredAlign;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding ?? REdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: background ?? theme?.singleRowFormBackground,
        borderRadius: borderRadius ?? BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (required && requiredAlign == RequiredAlign.front)
                Padding(
                  padding: REdgeInsets.only(right: 3),
                  child: _requiredIcon(theme),
                ),
              Text(
                title,
                maxLines: 1,
                textAlign: TextAlign.end,
                overflow: TextOverflow.ellipsis,
                style: titleStyle ??
                    TextStyle(
                      color: theme?.titleColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              if (required && requiredAlign == RequiredAlign.end)
                Padding(
                  padding: REdgeInsets.only(left: 3),
                  child: _requiredIcon(theme),
                ),
            ],
          ),
          TextField(
            readOnly: readOnly,
            controller: controller,
            maxLines: maxLines ?? 4,
            expands: maxLines != null,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            style: textStyle ??
                TextStyle(
                  color: theme?.textColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
            decoration: InputDecoration(
              filled: false,
              border: InputBorder.none,
              hintText: hint,
              hintStyle: hintStyle ??
                  TextStyle(
                    color: theme?.hintTextColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _requiredIcon(MainTheme? theme) {
    return Baseline(
      baseline: 16.h,
      baselineType: TextBaseline.alphabetic,
      child: Text(
        '*',
        style: TextStyle(
          color: theme?.singleRowFormRequiredColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
