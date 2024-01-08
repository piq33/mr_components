import 'dart:io';

import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/widget/common/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef OnImagePressed = Function(String? url, String? path);
typedef PlaceholderWidgetBuilder = Widget Function(
  BuildContext context,
  String url,
);

/// 支持网络及本地图片预览，当有[url]参数时将忽略[path]参数
class ImagePreview extends StatelessWidget {
  const ImagePreview({
    /// 远程地址
    this.url,

    /// 本地地址
    this.path,
    this.width,
    this.height,
    this.fit,
    this.previewIconDisplay = true,
    this.placeholder,
    this.errorWidget,
    this.borderRadius = BorderRadius.zero,
    this.onPreviewPressed,
    this.onDeletePressed,
    super.key,
  }) : assert(url != null || path != null);

  final String? url;
  final String? path;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final bool previewIconDisplay;
  final PlaceholderWidgetBuilder? placeholder;
  final Widget? errorWidget;
  final BorderRadiusGeometry borderRadius;
  final OnImagePressed? onPreviewPressed;
  final OnImagePressed? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    late Widget img;
    // 当有删除按钮时，图片需要设置margin
    double? actualWidth = width;
    double? actualHeight = height;
    if (onDeletePressed != null) {
      if (actualWidth != null) actualWidth -= 5.w;
      if (actualHeight != null) actualHeight -= 5.h;
    }
    // 优先本地路径查看图片
    if (path?.isNotEmpty ?? false) {
      img = Image.file(
        File(path!),
        width: actualWidth,
        height: actualHeight,
        fit: fit,
        frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
          if (wasSynchronouslyLoaded) return child;
          return AnimatedOpacity(
            opacity: frame == null ? 0 : 1,
            duration: const Duration(seconds: 1),
            curve: Curves.easeOut,
            child: child,
          );
        },
        errorBuilder: (context, error, stackTrace) {
          return errorWidget ??
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.common.defaultImage.provider(),
                    fit: BoxFit.cover,
                  ),
                ),
              );
        },
      );
    } else if (url?.isNotEmpty ?? false) {
      img = CacheImage(
        width: actualWidth,
        height: actualHeight,
        imageUrl: url!,
        fit: fit,
        placeholder: placeholder,
        errorWidget: errorWidget,
      );
    } else {
      img = const SizedBox();
    }

    img = TextButton(
      onPressed: () => onPreviewPressed?.call(url, path),
      child: img,
    );

    if (borderRadius != BorderRadius.zero) {
      img = ClipRRect(borderRadius: borderRadius, child: img);
    }

    if (onDeletePressed != null) {
      img = Stack(
        children: [
          Container(
            margin: REdgeInsets.only(top: 5, right: 5),
            child: img,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: _DeleteIcon(
              url: url,
              path: path,
              onDeletePressed: onDeletePressed,
            ),
          ),
        ],
      );
    } else if (previewIconDisplay && onPreviewPressed != null) {
      img = Stack(
        children: [
          img,
          Positioned(
            top: 5.h,
            right: 5.w,
            child: _PreviewIcon(
              url: url,
              path: path,
              onPreviewPressed: onPreviewPressed,
            ),
          ),
        ],
      );
    }
    return img;
  }
}

class _DeleteIcon extends StatelessWidget {
  const _DeleteIcon({
    required this.url,
    required this.path,
    required this.onDeletePressed,
  });

  final String? url;
  final String? path;
  final OnImagePressed? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onDeletePressed?.call(url, path),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.r),
        ),
      ),
      child: Assets.media.mediaDeleteIcon.image(
        width: 24.w,
        height: 24.h,
        fit: BoxFit.contain,
      ),
    );
  }
}

class _PreviewIcon extends StatelessWidget {
  const _PreviewIcon({
    required this.url,
    required this.path,
    required this.onPreviewPressed,
  });

  final String? url;
  final String? path;
  final OnImagePressed? onPreviewPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPreviewPressed?.call(url, path),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
      child: Assets.media.imagePreviewIcon.image(
        width: 20.w,
        height: 20.h,
        fit: BoxFit.contain,
      ),
    );
  }
}
