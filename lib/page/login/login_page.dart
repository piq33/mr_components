import 'package:bsl/component/login/login_form.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/theme/login_theme.dart';
import 'package:bsl/theme/main_theme.dart';
import 'package:bsl/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class _LoginBody extends StatelessWidget {
  const _LoginBody({this.contract});

  final bool? contract;

  @override
  Widget build(BuildContext context) {
    final mainTheme = Theme.of(context).extension<MainTheme>();
    final loginTheme = Theme.of(context).extension<LoginTheme>();
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.login.loginBottomBackground.provider(),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Container(
          height: 215.h,
          padding: REdgeInsets.only(top: 58),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.login.loginTopBackground.provider(),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  '登录',
                  style: TextStyle(
                    color: mainTheme?.titleColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(padding: REdgeInsets.only(top: 30)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(padding: REdgeInsets.only(left: 32)),
                  Text(
                    '欢迎来到',
                    style: TextStyle(
                      color: mainTheme?.titleColor,
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(padding: REdgeInsets.only(left: 10)),
                  Text(
                    '博校声',
                    style: TextStyle(
                      color: loginTheme?.appNameColor,
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: REdgeInsets.only(top: 215),
          child: LoginForm(contract: contract),
        ),
      ],
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({this.contract, super.key});

  final bool? contract;

  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
    );
  }

  @override
  Widget build(BuildContext context) {
    return lightStatusBar(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: _LoginBody(contract: widget.contract),
      ),
    );
  }
}
