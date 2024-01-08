import 'dart:math';

import 'package:bsl/model/common_model.dart';
import 'package:bsl/router/gallery_route_utils.dart';
import 'package:bsl/widget/album/clip_video_preview.dart';
import 'package:bsl/widget/common/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GalleryGridView extends StatelessWidget {
  const GalleryGridView({
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
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemCount = min(resources.length, crossAxisCount);
        final itemWidth = constraints.maxWidth / itemCount;
        return _resourcesGrid(itemWidth);
      },
    );
  }

  Widget _resourcesGrid(double itemWidth) {
    return AlignedGridView.count(
      shrinkWrap: true,
      padding: REdgeInsets.symmetric(vertical: 9),
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: 8.w,
      mainAxisSpacing: 8.h,
      addAutomaticKeepAlives: false,
      cacheExtent: ScreenUtil().screenHeight,
      itemBuilder: (context, index) {
        final item = resources[index];
        Widget child;
        if (item.isVideo) {
          child = ClipVideoPreview(
            url: item.url,
            width: itemWidth,
            height: 108.h,
          );
        } else {
          child = CacheImage(
            imageUrl: item.url,
            width: itemWidth,
            height: 108.h,
            fit: BoxFit.cover,
          );
        }
        return Hero(
          tag: item.heroTag,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: TextButton(
              onPressed: () => onPressed?.call(resources, index),
              child: child,
            ),
          ),
        );
      },
      itemCount: resources.length,
    );
  }
}
