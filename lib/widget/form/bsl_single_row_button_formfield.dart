import 'package:bsl/model/common_model.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BslSingleRowButtonFormField extends StatelessWidget {
  const BslSingleRowButtonFormField({
    this.width,
    this.height,
    required this.title,
    this.titleStyle,
    this.text,
    this.textStyle,
    this.hint,
    this.hintStyle,
    this.padding,
    this.margin,
    this.spacing,
    this.textAlign = TextAlign.end,
    this.background,
    this.borderRadius,
    this.showIcon = true,
    this.iconColor,
    this.required = false,
    this.requiredAlign = RequiredAlign.end,
    this.onPressed,
    super.key,
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? spacing;
  final TextAlign textAlign;
  final Color? background;
  final BorderRadiusGeometry? borderRadius;
  final bool required;
  final RequiredAlign requiredAlign;
  final String title;
  final TextStyle? titleStyle;
  final String? text;
  final TextStyle? textStyle;
  final String? hint;
  final TextStyle? hintStyle;
  final bool showIcon;
  final Color? iconColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        color: background ?? theme?.singleRowFormBackground,
        borderRadius: borderRadius ?? BorderRadius.circular(12.r),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding:
              padding ?? REdgeInsets.symmetric(horizontal: 10, vertical: 15),
          shape: borderRadius != null
              ? RoundedRectangleBorder(borderRadius: borderRadius!)
              : null,
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
            spacing != null
                ? SizedBox(width: spacing)
                : Padding(padding: REdgeInsets.only(left: 16)),
            Expanded(
              child: (text?.isEmpty ?? true) && (hint?.isNotEmpty ?? false)
                  ? _hint(theme)
                  : _text(theme),
            ),
            Padding(padding: REdgeInsets.only(left: 10)),
            if (onPressed != null && showIcon)
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

  Widget _text(MainTheme? theme) {
    return Text(
      text ?? '',
      maxLines: 1,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: textStyle ??
          TextStyle(
            color: theme?.titleColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
    );
  }

  Widget _hint(MainTheme? theme) {
    return Text(
      hint ?? '',
      maxLines: 1,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: hintStyle ??
          TextStyle(
            color: theme?.hintTextColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
    );
  }
}
