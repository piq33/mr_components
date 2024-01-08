import 'dart:io';

import 'package:components/api/bsl_api.dart';
import 'package:components/log/global_log.dart';
import 'package:components/model/common_model.dart';
import 'package:components/resource/colors.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/util/permission_utils.dart';
import 'package:components/util/screen_utils.dart';
import 'package:components/widget/media/media_bottom_picker.dart';
import 'package:components/widget/media/record_bottom_sheet.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:simple_saver/simple_saver.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

mixin AddMediaMixin<T extends StatefulWidget> on State<T> {
  /// 添加 图片
  Future<UploadFile?> addImage([Widget? child]) async {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return await showModalBottomSheet<UploadFile?>(
      context: context,
      backgroundColor: mainTheme?.bottomSheetBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      builder: (context) {
        return BottomMediaPicker(
          cameraText: '拍摄',
          galleryText: '本地上传',
          onCameraPressed: () async {
            if (!await ensurePermission(Permission.camera, '相机')) return;
            final picker = ImagePicker();
            SmartDialog.showLoading(msg: '拍照中...');
            final image = await picker.pickImage(source: ImageSource.camera);
            SmartDialog.dismiss();
            final path = image?.path;
            logDebug('拍照: $path');
            UploadFile? file;
            if (path != null) {
              file = UploadFile(local: path, type: FileType.image, temp: true);
            }
            if (!mounted) return;
            Navigator.of(context).pop(file);
          },
          onGalleryPressed: () async {
            if (!await ensurePhotosPermission()) return;
            if (!mounted) return;

            final images = await AssetPicker.pickAssets(
              context,
              pickerConfig: AssetPickerConfig(
                maxAssets: 1,
                pickerTheme: AssetPicker.themeData(
                  ColorName.mainColor,
                  light: true,
                ),
                requestType: RequestType.image,
                specialPickerType: SpecialPickerType.noPreview,
              ),
            );
            SmartDialog.showLoading(msg: '选择图片...');
            final asset = images?.firstOrNull;
            final localFile = await asset?.file;
            final path = localFile?.path;
            logDebug('选择图片: $path');
            UploadFile? file;
            if (path != null) {
              file = UploadFile(
                local: path,
                asset: asset,
                type: FileType.image,
                temp: false,
              );
            }
            SmartDialog.dismiss();
            if (!mounted) return;
            Navigator.of(context).pop(file);
          },
          child: child,
        );
      },
    );
  }

  /// 添加 视频文件
  Future<UploadFile?> addVideo() async {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return await showModalBottomSheet<UploadFile?>(
      context: context,
      backgroundColor: mainTheme?.bottomSheetBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      builder: (context) {
        return BottomMediaPicker(
          cameraText: '录像',
          galleryText: '本地上传',
          onCameraPressed: () async {
            if (!await ensurePermission(Permission.camera, '相机')) return;
            final picker = ImagePicker();
            SmartDialog.showLoading(msg: '录像中...');
            final image = await picker.pickVideo(source: ImageSource.camera);
            SmartDialog.dismiss();
            final path = image?.path;
            logDebug('录像: $path');
            UploadFile? file;
            if (path != null) {
              file = UploadFile(local: path, type: FileType.video, temp: true);
            }
            if (!mounted) return;
            Navigator.of(context).pop(file);
          },
          onGalleryPressed: () async {
            if (!await ensureVideosPermission()) return;
            if (!mounted) return;

            final images = await AssetPicker.pickAssets(
              context,
              pickerConfig: AssetPickerConfig(
                maxAssets: 1,
                pickerTheme: AssetPicker.themeData(
                  ColorName.mainColor,
                  light: true,
                ),
                requestType: RequestType.video,
                specialPickerType: SpecialPickerType.noPreview,
                filterOptions: FilterOptionGroup(containsLivePhotos: false),
              ),
            );
            SmartDialog.showLoading(msg: '选择视频...');
            final asset = images?.firstOrNull;
            final localFile = await asset?.file;
            final path = localFile?.path;
            logDebug('选择视频: $path');
            UploadFile? file;
            if (path != null) {
              file = UploadFile(
                local: path,
                asset: asset,
                type: FileType.video,
                temp: false,
              );
            }
            SmartDialog.dismiss();
            if (!mounted) return;
            Navigator.of(context).pop(file);
          },
        );
      },
    );
  }

  /// 添加 录音文件
  Future<UploadFile?> addVoice() async {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    return await showModalBottomSheet<UploadFile?>(
      context: context,
      backgroundColor: mainTheme?.bottomSheetBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      builder: (context) {
        return RecordBottomSheet(
          onRecordFinish: (path) {
            UploadFile? file;
            if (path != null) {
              file = UploadFile(local: path, type: FileType.audio, temp: true);
            }
            if (!mounted) return;
            Navigator.of(context).pop(file);
          },
        );
      },
    );
  }
}

mixin SaveMediaMixin<T extends StatefulWidget> on State<T> {
  void showFileSaverBottomSheet(
    File file, {
    bool deleteOriginal = false,
  }) async {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final save = await showModalBottomSheet<bool?>(
        context: context,
        backgroundColor: mainTheme?.bottomSheetBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          ),
        ),
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 60.h,
                child: TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text(
                    '保存',
                    style: TextStyle(
                      color: mainTheme?.bottomSheetConfirmTextColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(height: 1.p, color: mainTheme?.dividerColor),
              SizedBox(
                height: 60.h,
                child: TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    '取消',
                    style: TextStyle(
                      color: mainTheme?.bottomSheetCancelTextColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          );
        });
    if (save != true) return;

    try {
      SmartDialog.showLoading(msg: '正在保存...');
      final result = await SimpleSaver.saveFile(path: file.path);
      if (result.isSuccess) {
        Fluttertoast.showToast(msg: '保存成功');
      } else {
        logWarning('文件保存异常');
        Fluttertoast.showToast(msg: '保存失败: ${result.errorMessage}');
      }
    } catch (e, stackTrace) {
      logError('多媒体文件保存异常', e, stackTrace);
    } finally {
      SmartDialog.dismiss();
    }

    if (deleteOriginal) {
      try {
        file.deleteSync();
      } catch (e, stackTrace) {
        logWarning('文件清理异常: ${e.toString()}', e, stackTrace);
      }
    }
  }

  void showSaverBottomSheet(String url) async {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final save = await showModalBottomSheet<bool?>(
        context: context,
        backgroundColor: mainTheme?.bottomSheetBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          ),
        ),
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 60.h,
                child: TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text(
                    '保存',
                    style: TextStyle(
                      color: mainTheme?.bottomSheetConfirmTextColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(height: 1.p, color: mainTheme?.dividerColor),
              SizedBox(
                height: 60.h,
                child: TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    '取消',
                    style: TextStyle(
                      color: mainTheme?.bottomSheetCancelTextColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          );
        });
    if (save != true) return;
    SmartDialog.showLoading(msg: '正在保存...');
    try {
      final result = await _saveUrl(url);
      logDebug('文件: $url\n保存结果: $result');
    } catch (e) {
      logError('多媒体文件保存异常');
    } finally {
      SmartDialog.dismiss();
    }
  }

  Future<bool> _saveUrl(String url) async {
    final filePath = await _downloadFile(url);
    if (filePath == null) {
      Fluttertoast.showToast(msg: '保存失败');
      return false;
    }
    final result = await SimpleSaver.saveFile(path: filePath);
    if (result.isSuccess) {
      Fluttertoast.showToast(msg: '保存成功');
    } else {
      logWarning('文件保存异常');
      Fluttertoast.showToast(msg: '保存失败: ${result.errorMessage}');
    }
    // 清理下载文件
    try {
      File(filePath).deleteSync();
    } catch (e, stackTrace) {
      logWarning('缓存文件清理异常: ${e.toString()}', e, stackTrace);
    }
    return result.isSuccess;
  }

  Future<String?> _downloadFile(String url) async {
    if (url.isEmpty) {
      logWarning('链接为空');
      return null;
    }

    // 从地址中截取文件名字
    var filename = '';
    try {
      filename = url.substring(url.lastIndexOf(Platform.pathSeparator) + 1);
    } catch (e, stackTrace) {
      logError('链接解析异常: ${e.toString()}', e, stackTrace);
    }
    if (filename.isEmpty) {
      logWarning('无法从链接中解析出文件名: $url');
      return null;
    }

    final dir = await getTemporaryDirectory();
    final path = '${dir.path}${Platform.pathSeparator}$filename';

    // 下载文件到app缓存文件夹
    final dio = BslService.dio();
    try {
      await dio.download(
        url,
        path,
        options: Options(
          sendTimeout: const Duration(minutes: 10),
          receiveTimeout: const Duration(minutes: 10),
        ),
      );
      return path;
    } catch (e, stackTrace) {
      logError('图片下载异常: $url', e, stackTrace);
    }
    return null;
  }
}
