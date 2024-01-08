import 'package:bsl/model/common_model.dart';
import 'package:bsl/widget/common/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotoStack extends StatelessWidget {
  const PhotoStack({required this.resources, super.key});

  final List<ResourceWrapper> resources;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: resources.asMap().entries.map((e) {
        final index = e.key;
        final resource = e.value;
        return Transform.rotate(
          angle: 0.14 * (index - 1),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Hero(
              tag: resource.heroTag,
              child: CacheImage(
                width: 323.w,
                height: 216.h,
                fit: BoxFit.cover,
                imageUrl: resource.url,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
