import 'dart:io';

import 'package:bsl/mixin/media_mixin.dart';
import 'package:bsl/theme/media_theme.dart';
import 'package:bsl/theme/theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

class ImagePreviewPage extends StatelessWidget {
  const ImagePreviewPage({
    required this.url,
    required this.path,
    this.tag,
    super.key,
  });

  final String url;
  final String path;
  final String? tag;

  @override
  Widget build(BuildContext context) {
    return lightStatusBar(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(child: ImagePreviewBody(url: url, path: path, tag: tag)),
      ),
    );
  }
}

/// 浏览图片，允许缩放图片
class ImagePreviewBody extends StatefulWidget {
  const ImagePreviewBody({
    required this.url,
    required this.path,
    this.tag,
    super.key,
  });

  final String url;
  final String path;
  final String? tag;

  @override
  State<ImagePreviewBody> createState() => _ImagePreviewBodyState();
}

class _ImagePreviewBodyState extends State<ImagePreviewBody>
    with SaveMediaMixin {
  @override
  void initState() {
    super.initState();

    /// 页面内允许横屏
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.orientationOf(context);
    final mediaTheme = Theme.of(context).extension<MediaTheme>();
    String tag = '';
    ImageProvider? imageProvider;
    if (widget.url.isNotEmpty) {
      tag = widget.tag ?? widget.url;
      imageProvider = CachedNetworkImageProvider(widget.url);
    } else if (widget.path.isNotEmpty) {
      tag = widget.tag ?? widget.path;
      imageProvider = FileImage(File(widget.path));
    }
    return Stack(
      children: [
        if (imageProvider != null)
          GestureDetector(
            onTap: Get.back,
            onLongPress: () => showSaverBottomSheet(widget.url),
            child: Center(
              child: PhotoView(
                imageProvider: imageProvider,
                heroAttributes: PhotoViewHeroAttributes(tag: tag),
              ),
            ),
          ),
        Positioned(
          top: orientation == Orientation.landscape ? 25.h : 25.h,
          left: orientation == Orientation.landscape ? 10.w : 22.w,
          child: IconButton(
            onPressed: Get.back,
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.arrow_back_ios,
              size: orientation == Orientation.landscape ? 36.r : 13.4.r,
              color: mediaTheme?.backButtonColor,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    /// 恢复只允许竖屏模式
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }
}
