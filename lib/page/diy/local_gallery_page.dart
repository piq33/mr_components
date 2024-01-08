import 'package:components/component/diy/local_gallery_body.dart';
import 'package:components/management/mobx/diy/local_gallery_store.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/widget/common/cache_image.dart';
import 'package:components/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

// 最大选择数量
const _maxCount = 9;

class LocalGalleryPage extends StatefulWidget {
  const LocalGalleryPage({this.maxCount, this.initialAssets, super.key});

  final int? maxCount;
  final List<String>? initialAssets;

  @override
  State<LocalGalleryPage> createState() => _LocalGalleryPageState();
}

class _LocalGalleryPageState extends State<LocalGalleryPage> {
  final _store = LocalGalleryStore();

  @override
  void initState() {
    super.initState();
    if (widget.initialAssets != null) {
      _store.init(widget.initialAssets!);
    }
  }

  @override
  void didUpdateWidget(covariant LocalGalleryPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialAssets != null) {
      _store.init(widget.initialAssets!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return Scaffold(
      appBar: defaultAppBar(context: context, title: '本地相册'),
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: mainTheme?.cardBoxBackground,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14.r),
            topRight: Radius.circular(14.r),
          ),
          boxShadow: [
            BoxShadow(
              color: mainTheme?.cardBoxShadow ?? Colors.transparent,
              blurRadius: 16,
              offset: const Offset(0, -19),
            )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 19.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: REdgeInsets.only(left: 40),
                  child: Observer(
                    builder: (context) {
                      final count = _store.data.length;
                      return RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: mainTheme?.subTextColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                            const TextSpan(text: '您已选择 '),
                            TextSpan(
                              text: '$count张',
                              style: TextStyle(
                                color: mainTheme?.hyperlinkColor,
                              ),
                            ),
                            const TextSpan(text: ' 照片'),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: REdgeInsets.only(right: 16),
                  child: TextButton(
                    onPressed: () {
                      final list = _store.data.toList();
                      Fluttertoast.showToast(msg: "已选择 ${list.length} 张图片");
                      Navigator.of(context).pop(list);
                    },
                    child: Container(
                      padding: REdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 3,
                      ),
                      decoration: ShapeDecoration(
                        color: mainTheme?.mainButtonBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                      child: Text(
                        '下一步',
                        style: TextStyle(
                          color: mainTheme?.mainButtonTextColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            SizedBox(
              height: 56.h,
              child: Observer(
                builder: (context) {
                  final list = _store.data;
                  return ListView.separated(
                    padding: REdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final asset = list[index];
                      final imageProvider = AssetEntityImageProvider(
                        asset,
                        isOriginal: false,
                        thumbnailSize: defaultAssetGridPreviewSize,
                      );
                      return Stack(
                        children: [
                          Container(
                            width: 44.w,
                            height: 44.w,
                            margin: REdgeInsets.only(top: 12, right: 12),
                            child: RepaintBoundary(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(14.r),
                                child: AssetEntityCacheImage(
                                  width: 44.w,
                                  height: 44.w,
                                  provider: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: TextButton(
                              onPressed: () => _store.unselect(asset),
                              child: Assets.diy.imageDeleteIcon.image(
                                width: 24.w,
                                height: 24.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 10.w),
                    itemCount: list.length,
                  );
                },
              ),
            ),
            SizedBox(height: 18.h),
          ],
        ),
      ),
      body: LocalGalleryBody(
        maxCount: widget.maxCount ?? _maxCount,
        store: _store,
      ),
    );
  }
}
