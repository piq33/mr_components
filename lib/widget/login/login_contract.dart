import 'package:components/theme/login_theme.dart';
import 'package:components/theme/main_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginContract extends StatelessWidget {
  const LoginContract({
    required this.checked,
    required this.onChanged,
    required this.onUserAgreementPressed,
    required this.onPrivacyPolicyPressed,
    super.key,
  });

  final bool checked;
  final VoidCallback? onUserAgreementPressed;
  final VoidCallback? onPrivacyPolicyPressed;
  final ValueChanged<bool?>? onChanged;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final loginTheme = Theme.of(context).extension<LoginTheme>();
    final normalTextStyle = TextStyle(
      color: mainTheme?.subTextColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
    );
    final highlightTextStyle = TextStyle(
      color: loginTheme?.remindColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 24.w,
          height: 24.h,
          child: Transform.scale(
            scale: 14 / 18,
            child: Checkbox(
              value: checked,
              activeColor: loginTheme?.contractCheckBackground,
              checkColor: loginTheme?.contractCheckColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              onChanged: onChanged,
            ),
          ),
        ),
        Padding(padding: REdgeInsets.only(left: 5)),
        Flexible(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '登录代表您同意',
                  style: normalTextStyle,
                ),
                TextSpan(
                  text: '博校声',
                  style: highlightTextStyle,
                ),
                TextSpan(
                  text: '服务协议',
                  style: highlightTextStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = onUserAgreementPressed,
                ),
                TextSpan(
                  text: '、',
                  style: highlightTextStyle,
                ),
                TextSpan(
                  text: '隐私政策',
                  style: highlightTextStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = onPrivacyPolicyPressed,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
