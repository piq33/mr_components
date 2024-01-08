import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/time_models.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/diy_theme.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/widget/media/image_preview.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

typedef OnCatalogTypeChanged = void Function(CatalogType type);

class GalleryCard extends StatelessWidget {
  const GalleryCard({
    this.cover,
    this.catalogType,
    required this.titleController,
    required this.contentController,
    this.onCoverAdded,
    this.onCoverDeleted,
    this.onCatalogTypePressed,
    super.key,
  });

  final UploadFile? cover;
  final CatalogType? catalogType;
  final TextEditingController titleController;
  final TextEditingController contentController;
  final VoidCallback? onCoverAdded;
  final VoidCallback? onCoverDeleted;
  final OnCatalogTypeChanged? onCatalogTypePressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final diyTheme = Theme.of(context).extension<DiyTheme>();
    return Container(
      margin: REdgeInsets.symmetric(horizontal: 16, vertical: 22),
      padding: REdgeInsets.all(16),
      decoration: BoxDecoration(
        color: mainTheme?.cardBoxBackground,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: mainTheme?.cardBoxShadow ?? Colors.transparent,
            blurRadius: 12,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 110.w,
              height: 25.h,
              padding: REdgeInsets.only(bottom: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.diy.decoration1.path),
                  fit: BoxFit.fill,
                ),
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                '请输入标题',
                style: TextStyle(
                  color: diyTheme?.diyCompleteTitleColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: const <double>[4, 2],
            radius: Radius.circular(12.r),
            child: TextField(
              controller: titleController,
              style: TextStyle(
                color: mainTheme?.titleColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                isCollapsed: true,
                isDense: true,
                contentPadding: REdgeInsets.all(5),
                border: InputBorder.none,
              ),
              textInputAction: TextInputAction.next,
            ),
          ),
          SizedBox(height: 25.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 105.w,
              height: 22.h,
              padding: REdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.diy.decoration2.path),
                  fit: BoxFit.fill,
                ),
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                '请选择封面',
                style: TextStyle(
                  color: diyTheme?.diyCompleteTitleColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: 13.h),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 70.w,
              height: 70.h,
              child: cover == null
                  ? _AddButton(onPressed: onCoverAdded)
                  : ImagePreview(
                      url: cover!.remote,
                      path: cover!.local,
                      fit: BoxFit.cover,
                      width: 70.w,
                      height: 70.h,
                      borderRadius: BorderRadius.circular(12.r),
                      onPreviewPressed: (url, path) {
                        final parameters = {
                          'url': cover!.remote,
                          'path': cover!.local,
                          'tag': cover!.availableUrl,
                        };
                        Get.toNamed('image', parameters: parameters);
                      },
                      onDeletePressed: (url, path) {
                        onCoverDeleted?.call();
                      },
                    ),
            ),
          ),
          SizedBox(height: 20.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 105.w,
              height: 22.h,
              padding: REdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.diy.decoration2.path),
                  fit: BoxFit.fill,
                ),
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                '请选择标签',
                style: TextStyle(
                  color: diyTheme?.diyCompleteTitleColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 28.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final tab = timeTags[index];
                final selected = tab == catalogType;
                return Container(
                  decoration: BoxDecoration(
                    color: selected
                        ? diyTheme?.selectButtonBackground
                        : diyTheme?.unselectButtonBackground,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: TextButton(
                    onPressed: () => onCatalogTypePressed?.call(tab),
                    style: TextButton.styleFrom(
                      padding: REdgeInsets.only(
                        left: 10,
                        top: 4,
                        right: 10,
                        bottom: 6,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                    child: Text(
                      tab.display,
                      style: TextStyle(
                        color: selected
                            ? diyTheme?.selectButtonTextColor
                            : diyTheme?.unselectButtonTextColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 16.w),
              itemCount: timeTags.length,
            ),
          ),
          SizedBox(height: 20.h),
          DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: const <double>[4, 2],
            radius: Radius.circular(12.r),
            child: TextField(
              controller: contentController,
              style: TextStyle(
                color: mainTheme?.titleColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 6,
              decoration: InputDecoration(
                isCollapsed: true,
                isDense: true,
                contentPadding: REdgeInsets.all(10),
                hintText: '请输入内容~',
                hintStyle: TextStyle(
                  color: mainTheme?.hintTextColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
              ),
              textInputAction: TextInputAction.done,
            ),
          ),
          SizedBox(height: 6.h),
        ],
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  const _AddButton({this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(12.r),
        child: Center(
          child: Icon(
            Icons.add,
            size: 28.r,
            color: mainTheme?.hintTextColor,
          ),
        ),
      ),
    );
  }
}
