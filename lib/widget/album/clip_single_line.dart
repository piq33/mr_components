import 'dart:math';

import 'package:bsl/model/common_model.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/router/gallery_route_utils.dart';
import 'package:bsl/theme/album_theme.dart';
import 'package:bsl/widget/album/clip_video_preview.dart';
import 'package:bsl/widget/common/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class _MoreMask extends StatelessWidget {
  const _MoreMask({
    required this.height,
    required this.images,
  });

  final double height;
  final List<ResourceWrapper> images;

  @override
  Widget build(BuildContext context) {
    final clipTheme = Theme.of(context).extension<AlbumTheme>();
    return Container(
      height: height,
      color: Colors.black.withOpacity(0.4),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Baseline(
            baseline: 18.sp,
            baselineType: TextBaseline.ideographic,
            child: Text(
              '+',
              style: TextStyle(
                fontSize: 20.sp,
                color: clipTheme?.moreTextColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            '${images.length - 3}',
            style: TextStyle(
              fontSize: 28.sp,
              color: clipTheme?.moreTextColor,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}

class GallerySingleLine extends StatelessWidget {
  const GallerySingleLine({
    this.crossAxisCount = 3,
    required this.resources,
    this.onPressed,
    super.key,
  });

  final int crossAxisCount;
  final List<ResourceWrapper> resources;
  final OnResourcePressed? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 163.h,
      padding: REdgeInsets.only(left: 8, top: 20, right: 8, bottom: 8),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.school.formal.clipBackground.provider(),
          fit: BoxFit.fill,
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final itemCount = min(resources.length, crossAxisCount);
          final itemWidth = constraints.maxWidth / itemCount;
          return _resourcesRow(itemWidth, constraints.maxHeight, itemCount);
        },
      ),
    );
  }

  Widget _resourcesRow(double width, double height, int itemCount) {
    return AlignedGridView.count(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      crossAxisCount: itemCount,
      mainAxisSpacing: 0,
      crossAxisSpacing: 5.w,
      addAutomaticKeepAlives: false,
      cacheExtent: 163.h,
      itemBuilder: (context, index) {
        final item = resources[index];
        Widget child;
        if (item.isVideo) {
          child = ClipVideoPreview(
            width: width,
            height: height,
            url: item.url,
          );
        } else {
          child = CacheImage(
            width: width,
            height: height,
            imageUrl: item.url,
            fit: BoxFit.cover,
          );
        }
        child = InkWell(
          onTap: () => onPressed?.call(resources, index),
          child: child,
        );
        final readableIndex = index + 1;
        if (readableIndex == crossAxisCount &&
            readableIndex < resources.length) {
          return Hero(
            tag: item.heroTag,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Stack(
                children: [
                  child,
                  _MoreMask(height: height, images: resources),
                ],
              ),
            ),
          );
        } else {
          return Hero(
            tag: item.heroTag,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: child,
            ),
          );
        }
      },
    );
  }
}
