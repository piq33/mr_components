import 'dart:math';

import 'package:bsl/model/common_model.dart';
import 'package:bsl/router/gallery_route_utils.dart';
import 'package:bsl/theme/conservation_theme.dart';
import 'package:bsl/widget/common/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadBox extends StatelessWidget {
  const UploadBox({required this.title, required this.pictures, super.key});

  final String title;
  final List<String> pictures;

  @override
  Widget build(BuildContext context) {
    final conservationTheme = Theme.of(context).extension<ConservationTheme>();
    final resources =
        pictures.map((picture) => ResourceWrapper.fromImage(picture)).toList();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: conservationTheme?.questionnaireTitleColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 12.h),
        resources.length == 1
            ? Center(
                child: LayoutBuilder(builder: ((context, constraints) {
                  final width = constraints.maxWidth;
                  final itemSize = width / 3;
                  return Hero(
                    tag: resources.first.heroTag,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.r),
                      child: TextButton(
                        onPressed: () => galleryRouteTo(resources, 0),
                        child: CacheImage(
                          width: itemSize,
                          height: itemSize,
                          imageUrl: resources.first.url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                })),
              )
            : GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: REdgeInsets.symmetric(horizontal: 23),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12.w,
                  mainAxisSpacing: 12.h,
                ),
                itemBuilder: (context, index) {
                  final item = resources[index];
                  return LayoutBuilder(builder: ((context, constraints) {
                    final size =
                        max(constraints.maxWidth, constraints.maxHeight);
                    return Hero(
                      tag: item.heroTag,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.r),
                        child: TextButton(
                          onPressed: () => galleryRouteTo(resources, index),
                          child: CacheImage(
                            width: size,
                            height: size,
                            imageUrl: item.url,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }));
                },
                itemCount: resources.length,
              ),
      ],
    );
  }
}
