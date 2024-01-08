import 'dart:math';

import 'package:components/model/common_model.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/album/photo_stack.dart';
import 'package:components/widget/common/empty.dart';
import 'package:components/widget/common/shimmer_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 最大显示堆叠张数
const _maxStack = 3;

enum AlbumType {
  overview(''),
  photo('个人相册'),
  clip('剪影列表');

  final String title;

  const AlbumType(this.title);
}

typedef OnPressed = Function(AlbumType type);

class AlbumOverviewList extends StatelessWidget {
  const AlbumOverviewList({
    required this.photosLoading,
    required this.photos,
    required this.clipsLoading,
    required this.clips,
    this.onPressed,
    super.key,
  });

  final bool photosLoading;
  final List<ResourceWrapper> photos;
  final bool clipsLoading;
  final List<ResourceWrapper> clips;
  final OnPressed? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final photosDisplay =
        photos.sublist(0, min(photos.length, _maxStack)).reversed.toList();
    final clipsDisplay =
        clips.sublist(0, min(clips.length, _maxStack)).reversed.toList();
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: REdgeInsets.only(top: 25)),
          TextButton(
            onPressed: () => onPressed?.call(AlbumType.photo),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        '照片列表',
                        style: TextStyle(
                          color: mainTheme?.titleColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '${photos.length}张',
                        style: TextStyle(
                          color: mainTheme?.subTextColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(padding: REdgeInsets.only(left: 8)),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: mainTheme?.subTextColor,
                      ),
                    ],
                  ),
                ),
                Padding(padding: REdgeInsets.only(top: 50)),
                if (photosLoading)
                  ShimmerContainer(
                    width: 323.w,
                    height: 238.h,
                    margin: REdgeInsets.symmetric(horizontal: 16),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                if (!photosLoading && photosDisplay.isEmpty)
                  const EmptyWidget(text: '请上传你的照片'),
                if (!photosLoading && photosDisplay.isNotEmpty)
                  SizedBox(
                    height: 238.h,
                    child: PhotoStack(resources: photosDisplay),
                  ),
                Padding(padding: REdgeInsets.only(bottom: 40)),
              ],
            ),
          ),
          Container(height: 8.h, color: mainTheme?.dividerColor),
          Padding(padding: REdgeInsets.only(top: 25)),
          TextButton(
            onPressed: () => onPressed?.call(AlbumType.clip),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        '剪影列表',
                        style: TextStyle(
                          color: mainTheme?.titleColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '${clips.length}张',
                        style: TextStyle(
                          color: mainTheme?.subTextColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(padding: REdgeInsets.only(left: 8)),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: mainTheme?.subTextColor,
                      ),
                    ],
                  ),
                ),
                Padding(padding: REdgeInsets.only(top: 50)),
                if (clipsLoading)
                  ShimmerContainer(
                    width: 323.w,
                    height: 238.h,
                    margin: REdgeInsets.symmetric(horizontal: 16),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                if (!clipsLoading && clipsDisplay.isEmpty)
                  const EmptyWidget(text: '请上传你的剪影'),
                if (!clipsLoading && clipsDisplay.isNotEmpty)
                  SizedBox(
                    height: 238.h,
                    child: PhotoStack(resources: clipsDisplay),
                  ),
                Padding(padding: REdgeInsets.only(bottom: 40)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
