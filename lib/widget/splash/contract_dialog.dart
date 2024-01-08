import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/login_theme.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ContractDialog extends StatelessWidget {
  const ContractDialog({this.confirmCallback, this.refuseCallback, super.key});

  final VoidCallback? confirmCallback;
  final VoidCallback? refuseCallback;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final loginTheme = Theme.of(context).extension<LoginTheme>();
    final normalTextStyle = TextStyle(
      color: mainTheme?.titleColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
    );
    final highlightTextStyle = TextStyle(
      color: loginTheme?.remindColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
    );
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: REdgeInsets.only(top: 26),
          padding: REdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: loginTheme?.contractDialogBackground,
            borderRadius: BorderRadius.all(Radius.circular(24.r)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: REdgeInsets.only(top: 46)),
              Text(
                '服务协议及隐私政策',
                style: TextStyle(
                  color: mainTheme?.titleColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(padding: REdgeInsets.only(top: 15)),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '欢迎使用“博校声”！我们非常重视您的个人隐私信息和隐私保护，在您使用“博校声”服务之前，请仔细阅读',
                      style: normalTextStyle,
                    ),
                    TextSpan(
                      text: '《博校声服务协议、隐私政策》',
                      style: highlightTextStyle,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed('privacyPolicy'),
                    ),
                    TextSpan(
                      text: '，我们将严格按照经您同意的各项条款使用您的个人信息，以便为您提供更好的服务。',
                      style: normalTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(padding: REdgeInsets.only(top: 20)),
              Text(
                '如您同意此政策，请点击“同意”并开始使用我们的产品和服务，我们尽全力保护您的个人信息安全。',
                style: TextStyle(
                  color: mainTheme?.subTextColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(padding: REdgeInsets.only(top: 20)),
              TextButton(
                onPressed: confirmCallback,
                style: TextButton.styleFrom(
                  backgroundColor: mainTheme?.mainButtonBackground,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 40.h,
                  alignment: Alignment.center,
                  child: Text(
                    '同意，继续使用',
                    style: TextStyle(
                      color: mainTheme?.mainButtonTextColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(padding: REdgeInsets.only(top: 10)),
              TextButton(
                onPressed: refuseCallback,
                style: TextButton.styleFrom(
                  backgroundColor: mainTheme?.subButtonBackground,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 40.h,
                  alignment: Alignment.center,
                  child: Text(
                    '不同意',
                    style: TextStyle(
                      color: mainTheme?.subButtonTextColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(padding: REdgeInsets.only(bottom: 15)),
            ],
          ),
        ),
        Assets.login.contractIcon.image(width: 50.w, height: 56.h),
      ],
    );
  }
}
