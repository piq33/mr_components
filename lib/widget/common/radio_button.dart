import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadioButton extends StatelessWidget {
  const RadioButton({
    required this.selected,
    this.width,
    this.height,
    this.normalIcon,
    this.selectedIcon,
    required this.text,
    this.padding,
    this.onPressed,
    super.key,
  });

  final bool selected;
  final double? width;
  final double? height;
  final String? normalIcon;
  final String? selectedIcon;
  final String text;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: (selected
                ? theme?.radioButtonSelectedColor
                : theme?.radioButtonUnselectedColor)
            ?.withOpacity(0.2),
        borderRadius: BorderRadius.all(Radius.circular(60.r)),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(60.r)),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (normalIcon != null && selectedIcon != null)
              Container(
                margin: REdgeInsets.only(right: 4),
                child: Image.asset(
                  selected ? selectedIcon! : normalIcon!,
                  width: 14.w,
                  height: 14.h,
                  color: selected
                      ? theme?.radioButtonSelectedColor
                      : theme?.radioButtonUnselectedColor,
                ),
              ),
            Text(
              text,
              style: TextStyle(
                color: selected
                    ? theme?.radioButtonSelectedColor
                    : theme?.radioButtonUnselectedColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
