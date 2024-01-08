import 'package:components/resource/assets.gen.dart';
import 'package:components/widget/common/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClipVideoPreview extends StatelessWidget {
  const ClipVideoPreview({
    this.width,
    this.height,
    required this.url,
    super.key,
  });

  final double? width;
  final double? height;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CacheImage(
          width: width,
          height: height,
          imageUrl:
              '$url?mode=keyframe&rotate=auto&ci-process=snapshot&format=jpg&time=1',
          fit: BoxFit.cover,
        ),
        Assets.media.videoPlayIcon.image(
          width: 47.w,
          height: 47.h,
        ),
      ],
    );
  }
}
