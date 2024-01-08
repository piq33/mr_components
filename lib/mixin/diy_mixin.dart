import 'package:components/log/global_log.dart';
import 'package:components/model/album_models.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/diy_models.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/util/global.dart';
import 'package:components/util/permission_utils.dart';
import 'package:components/widget/diy/bottom_picker.dart';
import 'package:components/widget/diy/share_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluwx/fluwx.dart';
import 'package:get/get.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

mixin DiyPickerMixin {
  Future<bool> pickPhoto(
    BuildContext context,
    DiyProductModel product, {
    List<String>? selected,
    int? maxCount,
  }) async {
    final uploadFiles = await photoPicker(context, selected, maxCount);
    if (uploadFiles == null || uploadFiles.isEmpty) return false;

    var template = product.template ??
        TemplateJsonModel.blankTemplate(
          uploadFiles.length,
        );
    template = await template.fillIn(uploadFiles);
    product.template = template;
    return true;
  }

  Future<bool> pickMusic(BuildContext context, DiyProductModel product) async {
    final music = await Get.toNamed(
      'diy/musicPicker',
      arguments: product.music,
    );
    if (music == null) return false;
    product.music = music;
    return true;
  }

  Future<List<UploadFile>?> photoPicker(
    BuildContext context, [
    List<String>? selected,
    int? maxCount,
  ]) async {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return await showModalBottomSheet<List<UploadFile>?>(
      context: context,
      backgroundColor: mainTheme?.bottomSheetBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      builder: (context) {
        return BottomPicker(
          onLocalPressed: () async {
            if (!await ensurePhotosPermission()) return;
            if (!context.mounted) return;

            final parameters = {'initial': 'photo'};
            if (maxCount != null) parameters['maxCount'] = maxCount.toString();

            final result =
                await Get.toNamed('diy/localGallery', parameters: parameters);
            logDebug('已选择本地照片: $result');
            if (result is! List<AssetEntity>? ||
                result == null ||
                result.isEmpty) {
              if (context.mounted) Navigator.of(context).pop();
              return;
            }

            if (!context.mounted) return;
            final list = result
                .map((e) => UploadFile.fromAsset(FileType.image, e))
                .toList();
            Navigator.of(context).pop(list);
          },
          onPhotoPressed: () async {
            final parameters = {'initial': 'photo'};
            if (maxCount != null) parameters['maxCount'] = maxCount.toString();

            final result = await Get.toNamed(
              'album/picker',
              parameters: parameters,
            );
            logDebug('已选择个人照片: $result');

            if (result is! AlbumPickerModel? ||
                result == null ||
                result.addPics.isEmpty) return;

            if (!context.mounted) return;
            final list = result.addPics
                .map((e) => UploadFile.fromRemote(FileType.image, e))
                .toList();
            Navigator.of(context).pop(list);
          },
          onClipPressed: () async {
            final parameters = {'initial': 'clip'};
            if (maxCount != null) parameters['maxCount'] = maxCount.toString();

            final result =
                await Get.toNamed('album/picker', parameters: parameters);
            logDebug('已选择剪影: $result');

            if (result is! AlbumPickerModel? ||
                result == null ||
                result.addPics.isEmpty) return;

            if (!context.mounted) return;
            final list = result.addPics
                .map((e) => UploadFile.fromRemote(FileType.image, e))
                .toList();
            Navigator.of(context).pop(list);
          },
        );
      },
    );
  }
}

mixin DiyShareMixin {
  void share(BuildContext context, TemplateDetailModel detail) async {
    final shareUrl = detail.shareUrl;
    if (shareUrl == null || shareUrl.isEmpty) {
      Fluttertoast.showToast(msg: '分享链接异常');
      return;
    }

    final mainTheme = Theme.of(context).extension<MainTheme>();
    showModalBottomSheet(
      context: context,
      backgroundColor: mainTheme?.bottomSheetBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      builder: (context) {
        return Container(
          height: 120.h,
          padding: REdgeInsets.only(left: 26, top: 20, right: 26),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () async {
                  Navigator.of(context).pop();

                  logDebug('分享下载链接: $shareUrl');
                  final cover = detail.cover;
                  await fluwx.share(
                    WeChatShareWebPageModel(
                      shareUrl,
                      title: detail.title,
                      description: detail.content,
                      thumbnail:
                          cover != null ? WeChatImage.network(cover) : null,
                    ),
                  );
                },
                child: Column(
                  children: [
                    Assets.diy.shareWechatIcon.image(width: 50.w, height: 50.h),
                    SizedBox(height: 10.h),
                    Text(
                      '分享微信',
                      style: TextStyle(
                        color: mainTheme?.mainButtonTextColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 40.w),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  showDialog(
                    context: context,
                    builder: (context) => ShareDialog(qrCode: shareUrl),
                  );
                },
                child: Column(
                  children: [
                    Assets.diy.shareQrcodeIcon.image(width: 50.w, height: 50.h),
                    SizedBox(height: 10.h),
                    Text(
                      '生成二维码',
                      style: TextStyle(
                        color: mainTheme?.mainButtonTextColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
