import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BslMultiRowTextFormField extends StatelessWidget {
  const BslMultiRowTextFormField({
    this.title,
    this.titleStyle,
    this.text,
    this.textStyle,
    this.hint,
    this.hintStyle,
    this.readOnly = false,
    this.padding,
    this.margin,
    this.background,
    this.borderRadius,
    this.required = false,
    this.suffixIcon,
    this.suffixIconConstraints,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.onPressed,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    super.key,
  });

  final String? title;
  final TextStyle? titleStyle;
  final String? text;
  final TextStyle? textStyle;
  final String? hint;
  final TextStyle? hintStyle;
  final bool readOnly;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? background;
  final BorderRadiusGeometry? borderRadius;
  final bool required;
  final Widget? suffixIcon;
  final BoxConstraints? suffixIconConstraints;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final VoidCallback? onPressed;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title?.isNotEmpty ?? false)
          Container(
            margin: REdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (required)
                  Container(
                    margin: REdgeInsets.only(right: 8),
                    child: _requiredIcon(mainTheme),
                  ),
                Expanded(
                  child: Text(
                    title ?? '',
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: titleStyle ??
                        TextStyle(
                          color: mainTheme?.titleColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
          ),
        TextField(
          readOnly: readOnly,
          controller: controller,
          maxLines: 1,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          textAlignVertical: TextAlignVertical.center,
          style: textStyle ??
              TextStyle(
                color: mainTheme?.textColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
          decoration: InputDecoration(
            filled: true,
            fillColor: mainTheme?.multiRowFormBackground,
            isDense: true,
            isCollapsed: true,
            contentPadding: padding,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(4.r),
            ),
            hintText: hint,
            hintStyle: hintStyle ??
                TextStyle(
                  color: mainTheme?.hintTextColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
            suffixIcon: suffixIcon,
            suffixIconConstraints: suffixIconConstraints,
          ),
          onTap: onPressed,
          onChanged: onChanged,
          onEditingComplete: onEditingComplete,
          onSubmitted: onSubmitted,
        ),
      ],
    );
  }

  Widget _requiredIcon(MainTheme? theme) {
    return Baseline(
      baseline: 16.h,
      baselineType: TextBaseline.alphabetic,
      child: Text(
        '*',
        style: TextStyle(
          color: theme?.multiRowFormRequiredColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
