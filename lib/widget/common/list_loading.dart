import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/shimmer_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ListLoadingShimmer extends StatelessWidget {
  const ListLoadingShimmer({
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    required this.itemCount,
    required this.separatorHeight,
    super.key,
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final int itemCount;
  final double separatorHeight;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: padding,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ShimmerContainer(
          width: width,
          height: height,
          borderRadius: borderRadius,
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: separatorHeight),
      itemCount: itemCount,
    );
  }
}

class ListLoadingAnimation extends StatelessWidget {
  const ListLoadingAnimation({
    this.width,
    this.height,
    this.color,
    this.margin,
    this.borderRadius,
    this.background,
    super.key,
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MainTheme>();
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        color: background,
        borderRadius: borderRadius,
      ),
      child: LoadingAnimationWidget.hexagonDots(
        color: color ?? theme?.loadingColor ?? Colors.transparent,
        size: 40.r,
      ),
    );
  }
}
