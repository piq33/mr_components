import 'package:bsl/resource/colors.gen.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/theme/theme.dart';
import 'package:bsl/util/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

PreferredSize defaultDarkAppBar({
  required BuildContext context,
  String? title,
  Widget? child,
  Color? background,
  double? height,
  bool hideLeading = false,
  List<Widget>? actions,
  VoidCallback? onPressed,
}) {
  final theme = Theme.of(context).extension<MainTheme>();
  return _defaultAppBar(
    context: context,
    background: background ?? ColorName.appbarBackgroundDark,
    title: title,
    child: child,
    textColor: theme?.potentialAppbarTextColor,
    height: height,
    hideLeading: hideLeading,
    actions: actions,
    onPressed: onPressed,
  );
}

PreferredSize defaultAppBar({
  required BuildContext context,
  String? title,
  Widget? child,
  Color? background,
  double? height,
  bool hideLeading = false,
  List<Widget>? actions,
  VoidCallback? onPressed,
}) {
  final theme = Theme.of(context).extension<MainTheme>();
  return _defaultAppBar(
    context: context,
    background: background,
    title: title,
    child: child,
    textColor: theme?.appbarTextColor,
    height: height,
    hideLeading: hideLeading,
    actions: actions,
    onPressed: onPressed,
  );
}

PreferredSize _defaultAppBar({
  required BuildContext context,
  String? title,
  Widget? child,
  bool hideLeading = false,
  Color? background,
  Color? textColor,
  double? height,
  List<Widget>? actions,
  VoidCallback? onPressed,
}) {
  assert(title != null || child != null);
  return PreferredSize(
    preferredSize: Size.fromHeight(height ?? statusBarHeight.h),
    child: AppBar(
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: lightOverlayStyle(),
      automaticallyImplyLeading: false,
      backgroundColor: background ?? ColorName.appbarBackgroundLight,
      title: child ??
          Text(
            title ?? '',
            style: TextStyle(
              color: textColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
      leading:
          !hideLeading && (Get.global(null).currentState?.canPop() ?? false)
              ? IconButton(
                  onPressed: onPressed ?? Get.back,
                  style: IconButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero,
                  ),
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 20.r,
                    color: textColor,
                  ),
                )
              : null,
      actions: actions,
    ),
  );
}

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    this.height,
    this.background,
    this.title,
    this.child,
    this.hideLeading = false,
    this.textColor,
    this.actions,
    this.onPressed,
    super.key,
  });

  final double? height;
  final Color? background;
  final String? title;
  final Widget? child;
  final bool hideLeading;
  final Color? textColor;
  final List<Widget>? actions;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 88.h,
      padding: REdgeInsets.only(top: statusBarHeight),
      color: background ?? ColorName.appbarBackgroundLight,
      child: Stack(
        children: [
          if (!hideLeading &&
              (Get.global(null).currentState?.canPop() ?? false))
            Positioned(
              left: 12,
              child: IconButton(
                onPressed: onPressed ?? Get.back,
                style: IconButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: REdgeInsets.all(12),
                ),
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20.r,
                  color: textColor,
                ),
              ),
            ),
          child ??
              Center(
                child: Text(
                  title ?? '',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
          if (actions != null) ...actions!,
        ],
      ),
    );
  }
}
