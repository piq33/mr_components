import 'dart:io';

import 'package:components/log/global_log.dart';
import 'package:components/management/services/config_service.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/theme/download_theme.dart';
import 'package:components/util/global.dart';
import 'package:components/widget/common/cache_image.dart';
import 'package:components/widget/download/download_screenshot.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluwx/fluwx.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:simple_saver/simple_saver.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadBody extends StatefulWidget {
  const DownloadBody({super.key});

  @override
  State<DownloadBody> createState() => _DownloadBodyState();
}

class _DownloadBodyState extends State<DownloadBody> {
  final _configService = Get.find<ConfigService>();
  final _screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    final downloadTheme = Theme.of(context).extension<DownloadTheme>();
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: REdgeInsets.only(top: statusBarHeight)),
            Assets.download.downloadLogo.image(width: 120.w, height: 120.h),
            TextButton(
              onPressed: () {
                launchUrl(
                  Uri.parse(_configService.envConfig.value.downloadUrl),
                  mode: LaunchMode.externalApplication,
                );
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.r),
                ),
              ),
              child: Container(
                width: 150.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.r),
                  image: DecorationImage(
                    image: Assets.download.downloadButton1.provider(),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  '立即下载',
                  style: TextStyle(
                    color: downloadTheme?.button1TextColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(padding: REdgeInsets.only(top: 83)),
            Text(
              '分享好友下载 APP',
              style: TextStyle(
                color: downloadTheme?.textColor,
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(padding: REdgeInsets.only(top: 17)),
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: CacheImage(
                width: 135.w,
                height: 135.h,
                imageUrl: _configService.envConfig.value.qrCode,
              ),
            ),
            Padding(padding: REdgeInsets.only(top: 28.5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () async {
                    final shareUrl = _configService.envConfig.value.downloadUrl;
                    logDebug('分享下载链接: $shareUrl');
                    await fluwx.share(
                      WeChatShareWebPageModel(
                        shareUrl,
                        title: '诚邀您下载博校声app',
                        description: '',
                        thumbnail: WeChatImage.network(
                          'https://xiaosheng-1304305658.cos.ap-guangzhou.myqcloud.com/new/app-icon/bxs_icon.jpg',
                          suffix: '.jpg',
                        ),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.r),
                    ),
                  ),
                  child: Container(
                    width: 150.w,
                    height: 44.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.r),
                      image: DecorationImage(
                        image: Assets.download.downloadButton1.provider(),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '分享微信',
                      style: TextStyle(
                        color: downloadTheme?.button1TextColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(padding: REdgeInsets.symmetric(horizontal: 8)),
                TextButton(
                  onPressed: () => _captureDownloadScreen(downloadTheme),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.r),
                    ),
                  ),
                  child: Container(
                    width: 150.w,
                    height: 44.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.r),
                      image: DecorationImage(
                        image: Assets.download.downloadButton2.provider(),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '保存图片',
                      style: TextStyle(
                        color: downloadTheme?.button2TextColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          top: (statusBarHeight + 12).h,
          left: 22.w,
          child: IconButton(
            onPressed: Get.back,
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20.r,
              color: downloadTheme?.backButtonColor,
            ),
          ),
        ),
      ],
    );
  }

  void _captureDownloadScreen(DownloadTheme? downloadTheme) async {
    SmartDialog.showLoading(msg: '正在保存...');
    try {
      final qrCode = _configService.envConfig.value.qrCode;
      // 根据二维码地址获取图像数据
      final qrCodeBytes =
          (await NetworkAssetBundle(Uri.parse(qrCode)).load(qrCode))
              .buffer
              .asUint8List();

      // 生成widget的图像数据
      final widgetBytes = await _screenshotController.captureFromWidget(
        DownloadScreenshot(
          backgroundAssetsPath: Assets.download.downloadBackground.path,
          qrCodeBytes: qrCodeBytes,
          textColor: downloadTheme?.textColor ?? Colors.transparent,
        ),
      );

      // 写入到本地临时文件
      final tempDir = await getTemporaryDirectory();
      final file = await File(
              '${tempDir.path}/bsl_download_${DateTime.now().millisecond}.png')
          .create();
      file.writeAsBytesSync(widgetBytes);

      // 保存到相册里
      final result = await SimpleSaver.saveFile(path: file.path);
      if (result.isSuccess) {
        Fluttertoast.showToast(msg: '保存成功');
      } else {
        logWarning('文件保存异常');
        Fluttertoast.showToast(msg: '保存失败: ${result.errorMessage}');
      }
      // 清理临时文件
      file.deleteSync();
    } catch (e, stackTrace) {
      logError('截图异常', e, stackTrace);
    } finally {
      SmartDialog.dismiss();
    }
  }
}
