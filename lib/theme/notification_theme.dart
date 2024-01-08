import 'package:flutter/material.dart';

class NotificationTheme extends ThemeExtension<NotificationTheme> {
  final Color? background;
  final Color? cardBackground;
  final Color? cardBoxShadow;
  final Color? tbcBackground;
  final Color? tbcTextColor;

  // 通知详情
  final Color? teacherBackground;
  final Color? teacherNameColor;
  final Color? dateTimeColor;

  // 签名
  final Color? signatureViewBorderColor;
  final Color? signatureViewBackground;

  const NotificationTheme({
    this.background,
    this.cardBackground,
    this.cardBoxShadow,
    this.tbcBackground,
    this.tbcTextColor,

    // 通知详情
    this.teacherBackground,
    this.teacherNameColor,
    this.dateTimeColor,

    // 签名
    this.signatureViewBorderColor,
    this.signatureViewBackground,
  });

  static const light = NotificationTheme(
    background: Colors.white,
    cardBackground: Colors.white,
    cardBoxShadow: Color(0x0A052843),
    tbcBackground: Color(0xFFFFB247),
    tbcTextColor: Colors.white,

    // 通知详情
    teacherBackground: Color(0x1A76CAFF),
    teacherNameColor: Color(0xFF2E333E),
    dateTimeColor: Color(0xFF9EA3BC),

    // 签名
    signatureViewBorderColor: Color(0xFFEAEFF4),
    signatureViewBackground: Colors.white,
  );
  static const dark = light;

  @override
  ThemeExtension<NotificationTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<NotificationTheme> lerp(
      ThemeExtension<NotificationTheme>? other, double t) {
    if (other is! NotificationTheme) {
      return this;
    }
    return NotificationTheme(
      background: Color.lerp(background, other.background, t),
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t),
      cardBoxShadow: Color.lerp(cardBoxShadow, other.cardBoxShadow, t),
      tbcBackground: Color.lerp(tbcBackground, other.tbcBackground, t),
      tbcTextColor: Color.lerp(tbcTextColor, other.tbcTextColor, t),

      // 通知详情
      teacherBackground:
          Color.lerp(teacherBackground, other.teacherBackground, t),
      teacherNameColor: Color.lerp(teacherNameColor, other.teacherNameColor, t),
      dateTimeColor: Color.lerp(dateTimeColor, other.dateTimeColor, t),

      // 签名
      signatureViewBorderColor: Color.lerp(
          signatureViewBorderColor, other.signatureViewBorderColor, t),
      signatureViewBackground:
          Color.lerp(signatureViewBackground, other.signatureViewBackground, t),
    );
  }
}
