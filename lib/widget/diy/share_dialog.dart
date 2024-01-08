import 'dart:io';

import 'package:bsl/log/global_log.dart';
import 'package:bsl/mixin/media_mixin.dart';
import 'package:bsl/util/permission_utils.dart';
import 'package:bsl/widget/diy/share_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';

class ShareDialog extends StatefulWidget {
  const ShareDialog({required this.qrCode, super.key});

  final String qrCode;

  @override
  State<StatefulWidget> createState() => _ShareDialogState();
}

class _ShareDialogState extends State<ShareDialog> with SaveMediaMixin {
  final _screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Screenshot(
          controller: _screenshotController,
          child: ShareContainer(
            qrCode: widget.qrCode,
            displayTip: true,
            onLongPressed: () async {
              if (!await ensurePhotosPermission()) return;

              File? file;
              try {
                SmartDialog.showLoading(msg: '正在生成图片...');
                final image = await _screenshotController.captureFromWidget(
                  ShareContainer(qrCode: widget.qrCode, displayTip: false),
                );
                final tempDir = await getTemporaryDirectory();
                file = await File(
                        '${tempDir.path}/diy_share_${DateTime.now().millisecondsSinceEpoch}.png')
                    .create();
                file.writeAsBytesSync(image);
              } catch (e, stackTrace) {
                logWarning('文件保存异常', e, stackTrace);
              } finally {
                SmartDialog.dismiss();
              }

              if (file != null) {
                showFileSaverBottomSheet(file, deleteOriginal: true);
              }
            },
          ),
        ),
        SizedBox(height: 30.h),
        Container(
          width: 26.r,
          height: 26.r,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(),
          ),
          child: TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Icon(Icons.close, color: Colors.black, size: 14.r),
          ),
        ),
      ],
    );
  }
}
