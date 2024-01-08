import 'package:components/resource/colors.gen.dart';
import 'package:flutter/material.dart';

class LoginTheme extends ThemeExtension<LoginTheme> {
  final Color? appNameColor;
  final Color? appDescColor;
  final Color? inputBorderColor;
  final Color? warningColor;
  final Color? remindColor;
  final Color? loginButtonTextColor;
  final Color? loginButtonBackground;
  final Color? contractCheckColor;
  final Color? contractCheckBackground;
  final Color? contractDialogBackground;

  const LoginTheme({
    this.appNameColor,
    this.appDescColor,
    this.inputBorderColor,
    this.warningColor,
    this.remindColor,
    this.loginButtonTextColor,
    this.loginButtonBackground,
    this.contractCheckColor,
    this.contractCheckBackground,
    this.contractDialogBackground,
  });

  static const light = LoginTheme(
    appNameColor: Colors.white,
    appDescColor: Color(0xFFA15D00),
    inputBorderColor: Color(0xFFCCCCCC),
    warningColor: Color(0xFFFF5A5A),
    remindColor: Color(0xFF009DFF),
    loginButtonTextColor: Color(0xFF67420F),
    loginButtonBackground: Color(0xFFFFDB75),
    contractCheckColor: Colors.white,
    contractCheckBackground: ColorName.mainColor,
    contractDialogBackground: Colors.white,
  );
  static const dark = light;

  @override
  ThemeExtension<LoginTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<LoginTheme> lerp(ThemeExtension<LoginTheme>? other, double t) {
    if (other is! LoginTheme) {
      return this;
    }
    return LoginTheme(
      appNameColor: Color.lerp(appNameColor, other.appNameColor, t),
      appDescColor: Color.lerp(appDescColor, other.appDescColor, t),
      inputBorderColor: Color.lerp(inputBorderColor, other.inputBorderColor, t),
      warningColor: Color.lerp(warningColor, other.warningColor, t),
      remindColor: Color.lerp(remindColor, other.remindColor, t),
      loginButtonTextColor:
          Color.lerp(loginButtonTextColor, other.loginButtonTextColor, t),
      loginButtonBackground:
          Color.lerp(loginButtonBackground, other.loginButtonBackground, t),
      contractCheckColor:
          Color.lerp(contractCheckColor, other.contractCheckColor, t),
      contractCheckBackground:
          Color.lerp(contractCheckBackground, other.contractCheckBackground, t),
      contractDialogBackground: Color.lerp(
          contractDialogBackground, other.contractDialogBackground, t),
    );
  }
}
