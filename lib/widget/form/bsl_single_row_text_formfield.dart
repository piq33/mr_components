import 'package:bsl/model/common_model.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BslSingleRowTextFieldFormField extends StatelessWidget {
  const BslSingleRowTextFieldFormField({
    this.width,
    this.height,
    this.focusNode,
    required this.title,
    this.titleStyle,
    this.text,
    this.textStyle,
    this.hint,
    this.hintStyle,
    this.readOnly = false,
    this.showIcon = true,
    this.iconColor,
    this.padding,
    this.margin,
    this.spacing,
    this.textAlign = TextAlign.end,
    this.background,
    this.borderRadius,
    this.required = false,
    this.requiredAlign = RequiredAlign.end,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    super.key,
  });

  final double? width;
  final double? height;
  final FocusNode? focusNode;
  final String title;
  final TextStyle? titleStyle;
  final String? text;
  final TextStyle? textStyle;
  final String? hint;
  final TextStyle? hintStyle;
  final bool readOnly;
  final bool showIcon;
  final Color? iconColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? spacing;
  final TextAlign textAlign;
  final Color? background;
  final BorderRadiusGeometry? borderRadius;
  final bool required;
  final RequiredAlign requiredAlign;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;

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
      child: Row(
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
          if (spacing != null) SizedBox(width: spacing),
          Expanded(
            child: TextField(
              readOnly: readOnly,
              controller: controller,
              focusNode: focusNode,
              maxLines: 1,
              keyboardType: keyboardType,
              textInputAction: textInputAction,
              textAlign: textAlign,
              textAlignVertical: TextAlignVertical.center,
              style: textStyle ??
                  TextStyle(
                    color: theme?.textColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
              decoration: InputDecoration(
                filled: false,
                isDense: true,
                isCollapsed: true,
                border: InputBorder.none,
                hintText: hint,
                hintStyle: hintStyle ??
                    TextStyle(
                      color: theme?.hintTextColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              onChanged: onChanged,
              onEditingComplete: onEditingComplete,
              onSubmitted: onSubmitted,
            ),
          ),
          Padding(padding: REdgeInsets.only(left: 10)),
          if (!readOnly && showIcon)
            Container(
              margin: REdgeInsets.only(left: 7),
              child: Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 20.r,
                color: iconColor ?? theme?.hintTextColor,
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
