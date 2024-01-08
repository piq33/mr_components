import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/media_theme.dart';
import 'package:bsl/util/date_utils.dart';
import 'package:bsl/widget/common/cache_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

typedef OnVideoPressed = Function(String? url, AssetEntity? asset);

class _VideoThumbnail extends StatelessWidget {
  const _VideoThumbnail({
    this.width,
    this.height,
    required this.asset,
    required this.fit,
    this.errorWidget,
  });

  final double? width;
  final double? height;
  final AssetEntity asset;
  final BoxFit fit;
  final Widget? errorWidget;
  @override
  Widget build(BuildContext context) {
    final AssetEntityImageProvider imageProvider = AssetEntityImageProvider(
      asset,
      isOriginal: false,
      thumbnailSize: defaultAssetGridPreviewSize,
    );
    final theme = Theme.of(context).extension<MediaTheme>();
    return Stack(
      children: [
        SizedBox(
          width: width,
          height: height,
          child: FittedBox(
            fit: fit,
            child: RepaintBoundary(
              child: AssetEntityGridItemBuilder(
                image: imageProvider,
                failedItemBuilder: (context) {
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
              ),
            ),
          ),
        ),
        Positioned(
          right: 10.w,
          bottom: 10.h,
          child: Text(
            Duration(seconds: asset.duration).mediaDuration(),
            style: TextStyle(
              color: theme?.videoDurationColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

const _thumbnailFit = BoxFit.cover;

/// 支持网络及本地视频预览，当有[url]参数时将忽略[asset]参数
class VideoPreview extends StatelessWidget {
  const VideoPreview({
    this.width,
    this.height,

    /// 远程地址
    this.url,

    /// 本地资源
    this.asset,
    this.errorWidget,
    this.borderRadius = BorderRadius.zero,
    this.onPreviewPressed,
    this.onDeletePressed,
    super.key,
  }) : assert(url != null || asset != null);

  final double? width;
  final double? height;
  final String? url;
  final AssetEntity? asset;
  final Widget? errorWidget;
  final BorderRadiusGeometry borderRadius;
  final OnVideoPressed? onPreviewPressed;
  final OnVideoPressed? onDeletePressed;

  @override
  Widget build(BuildContext context) {
    late Widget img;
    if (asset != null) {
      img = TextButton(
        onPressed: () => onPreviewPressed?.call(url, asset),
        child: _VideoThumbnail(
          width: width ?? double.infinity,
          height: height ?? double.infinity,
          asset: asset!,
          fit: _thumbnailFit,
          errorWidget: errorWidget,
        ),
      );
    } else if (url?.isNotEmpty ?? false) {
      img = CacheImage(
        imageUrl:
            '$url?mode=keyframe&rotate=auto&ci-process=snapshot&format=jpg&time=1',
        width: width ?? double.infinity,
        height: height ?? double.infinity,
        fit: _thumbnailFit,
      );
    }
    final preview = Stack(
      alignment: AlignmentDirectional.center,
      children: [
        img,
        if (onDeletePressed != null)
          Positioned(
            top: 10.h,
            right: 10.w,
            child: TextButton(
              onPressed: () => onDeletePressed?.call(url, asset),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.r),
                ),
              ),
              child: Assets.media.mediaDeleteIconNoBorder.image(
                width: 24.w,
                height: 24.h,
              ),
            ),
          ),
        TextButton(
          onPressed: () => onPreviewPressed?.call(url, asset),
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(47.r),
            ),
          ),
          child: Assets.media.videoPlayIcon.image(
            width: 47.w,
            height: 47.h,
          ),
        ),
      ],
    );
    if (borderRadius != BorderRadius.zero) {
      return ClipRRect(borderRadius: borderRadius, child: preview);
    }
    return preview;
  }
}
