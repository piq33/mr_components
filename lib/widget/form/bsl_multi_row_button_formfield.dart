import 'package:bsl/model/common_model.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BslMultiRowButtonFormField extends StatelessWidget {
  const BslMultiRowButtonFormField({
    this.title,
    this.titleStyle,
    this.text,
    this.textStyle,
    this.hint,
    this.hintStyle,
    this.padding,
    this.margin,
    this.background,
    this.borderRadius,
    this.required = false,
    this.requiredAlign = RequiredAlign.end,
    this.icon,
    this.showIcon = true,
    this.iconColor,
    this.onPressed,
    super.key,
  });

  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? background;
  final BorderRadiusGeometry? borderRadius;
  final bool required;
  final RequiredAlign requiredAlign;
  final String? title;
  final TextStyle? titleStyle;
  final String? text;
  final TextStyle? textStyle;
  final String? hint;
  final TextStyle? hintStyle;
  final Widget? icon;
  final bool showIcon;
  final Color? iconColor;
  final VoidCallback? onPressed;

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
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: padding,
            shape: borderRadius != null
                ? RoundedRectangleBorder(borderRadius: borderRadius!)
                : null,
            backgroundColor: mainTheme?.multiRowFormBackground,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: (text?.isEmpty ?? true) && (hint?.isNotEmpty ?? false)
                    ? _hint(mainTheme)
                    : _text(mainTheme),
              ),
              if (showIcon)
                icon ??
                    Container(
                      margin: REdgeInsets.only(left: 7),
                      child: Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 20.r,
                        color: iconColor ?? mainTheme?.hintTextColor,
                      ),
                    ),
            ],
          ),
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

  Widget _text(MainTheme? theme) {
    return Text(
      text ?? '',
      maxLines: 1,
      textAlign: TextAlign.start,
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
      textAlign: TextAlign.start,
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
