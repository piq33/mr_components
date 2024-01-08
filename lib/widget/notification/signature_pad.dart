import 'dart:ui';

import 'package:components/log/global_log.dart';
import 'package:components/model/notification/notification_model.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/resource/colors.gen.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/notification_theme.dart';
import 'package:components/widget/common/button.dart';
import 'package:components/widget/common/custom_dialog.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

typedef SignatureSubmit = Function(Image? image);

/// 用户签名板
class SignaturePad extends StatefulWidget {
  const SignaturePad({required this.notification, this.submit, super.key});

  final NotificationModel notification;
  final SignatureSubmit? submit;

  @override
  State createState() => _SignaturePadState();
}

class _SignaturePadState extends State<SignaturePad> {
  final GlobalKey<SfSignaturePadState> _signatureGlobalKey = GlobalKey();
  bool _showHint = true;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final notificationTheme = Theme.of(context).extension<NotificationTheme>();
    return Container(
      color: notificationTheme?.cardBackground,
      padding: REdgeInsets.only(left: 16, top: 12, right: 16, bottom: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '家长签字确认',
                style: TextStyle(
                  color: mainTheme?.titleColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {
                  _signatureGlobalKey.currentState?.clear();
                  setState(() => _showHint = true);
                },
                style: TextButton.styleFrom(
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: REdgeInsets.symmetric(horizontal: 6, vertical: 4),
                ),
                child: Assets.notification.resignatureButton
                    .image(width: 42.w, height: 12.h),
              ),
            ],
          ),
          Container(
            height: 135.h,
            margin: REdgeInsets.only(top: 16, bottom: 18),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Stack(
                children: [
                  Container(
                    color: ColorName.signaturePadBackground,
                  ),
                  SfSignaturePad(
                    key: _signatureGlobalKey,
                    minimumStrokeWidth: 1,
                    maximumStrokeWidth: 3,
                    strokeColor: ColorName.signaturePenColor,
                    backgroundColor: Colors.transparent,
                    onDrawStart: () {
                      setState(() => _showHint = false);
                      return false;
                    },
                  ),
                  if (_showHint)
                    IgnorePointer(
                      child: Center(
                        child: Text(
                          '请家长在此区域签名确认',
                          style: TextStyle(
                            color: mainTheme?.subTextColor,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          DefaultButton(
            height: 47.h,
            margin: REdgeInsets.symmetric(horizontal: 62),
            onTap: () => _submit(mainTheme),
            child: Center(
              child: Text(
                '我已阅读',
                style: TextStyle(
                  color: mainTheme?.mainButtonTextColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _submit(MainTheme? mainTheme) async {
    // 家长还未在签名板操作时, 弹出警告弹框
    if (_showHint) {
      showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: mainTheme?.dialogBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.r)),
            ),
            child: CustomDialog(
              width: 271.w,
              iconPath: Assets.common.warningIcon2.path,
              dismissible: false,
              confirmText: '继续',
              onConfirm: () => Navigator.of(context).pop(),
              child: Container(
                margin: REdgeInsets.only(left: 4, top: 8, right: 4, bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '提示',
                      style: TextStyle(
                        color: mainTheme?.titleColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(padding: REdgeInsets.only(top: 6)),
                    Text(
                      '请家长签字后提交',
                      style: TextStyle(
                        color: mainTheme?.warningTextColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
      return;
    }
    final img = await _signatureGlobalKey.currentState?.toImage();
    logDebug('签名图片二进制: $img');
    widget.submit?.call(img);
  }
}
