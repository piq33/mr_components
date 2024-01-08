import 'package:bsl/mixin/media_mixin.dart';
import 'package:bsl/model/media_model.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/theme/media_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

typedef PageChanged = void Function(int index);

class PhotoGallery extends StatefulWidget {
  // 图片列表
  final List<ImageWrapper> imageList;
  // 初始页
  final int index;
  // 图片滑动方向
  final Axis direction;
  // 背景装饰
  final BoxDecoration? decoration;
  // 图片切换回调
  final PageChanged? pageChanged;

  const PhotoGallery({
    required this.imageList,
    this.index = 1,
    this.direction = Axis.horizontal,
    this.decoration,
    this.pageChanged,
    super.key,
  });

  @override
  State<PhotoGallery> createState() => _PictureOverviewState();
}

class _PictureOverviewState extends State<PhotoGallery> with SaveMediaMixin {
  late int currentIndex = widget.index;

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
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final mediaTheme = Theme.of(context).extension<MediaTheme>();
    return Scaffold(
      backgroundColor: mediaTheme?.galleryBackground,
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              onTap: Get.back,
              onLongPress: () {
                final currentItem = widget.imageList[currentIndex];
                showSaverBottomSheet(currentItem.url);
              },
              child: PhotoViewGallery.builder(
                backgroundDecoration: widget.decoration,
                scrollDirection: widget.direction,
                pageController: PageController(
                  initialPage: widget.index,
                  keepPage: false,
                ),
                enableRotation: true,
                itemCount: widget.imageList.length,
                onPageChanged: (index) => setState(
                  () {
                    currentIndex = index;
                    widget.pageChanged?.call(index);
                  },
                ),
                loadingBuilder: (context, event) {
                  return LoadingAnimationWidget.threeArchedCircle(
                    color: mainTheme?.loadingColor ?? Colors.transparent,
                    size: 20.r,
                  );
                },
                builder: (BuildContext context, int index) {
                  var image = widget.imageList[index];
                  return PhotoViewGalleryPageOptions(
                    imageProvider: CachedNetworkImageProvider(image.url),
                    heroAttributes: PhotoViewHeroAttributes(tag: image.heroTag),
                  );
                },
                wantKeepAlive: false,
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: Text(
                "${currentIndex + 1}/${widget.imageList.length}",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: mediaTheme?.galleryIndexColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  shadows: [
                    Shadow(
                      color: mediaTheme?.galleryBoxShadow ?? Colors.transparent,
                      offset: const Offset(1, 1),
                    ),
                  ],
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
        ),
      ),
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
