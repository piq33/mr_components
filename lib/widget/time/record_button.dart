import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/time_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecordButton extends StatelessWidget {
  const RecordButton({this.onTap, super.key});

  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<TimeTheme>();
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 50.r,
        height: 50.r,
        padding: REdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
        decoration: BoxDecoration(
          // color: ColorName.mainColor,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              theme?.floatButtonBackground1 ?? Colors.transparent,
              theme?.floatButtonBackground2 ?? Colors.transparent,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: theme?.floatButtonBoxShadow ?? Colors.transparent,
              offset: const Offset(0.0, 1.0),
              blurRadius: 20.0.r,
            )
          ],
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Image.asset(Assets.time.record.path, fit: BoxFit.cover),
      ),
    );
  }
}
