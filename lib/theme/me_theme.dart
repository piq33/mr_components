import 'package:flutter/material.dart';

class MeTheme extends ThemeExtension<MeTheme> {
  final Color? cardBackground;
  final Color? cardBoxShadow;
  final Color? phoneTextColor;
  final Color? editableTextColor;
  final Color? editableBackground;
  final Color? badgeTextColor;
  final Color? badgeBackground;
  final Color? avatarBackground;
  final Color? versionTextColor;
  final Color? cacheTextColor;

  // 按钮
  final Color? logoutButtonTextColor;
  final Color? logoutButtonBackground;

  // 学生信息
  final Color? studentInfoTextColor;

  const MeTheme({
    this.cardBackground,
    this.cardBoxShadow,
    this.phoneTextColor,
    this.editableTextColor,
    this.editableBackground,
    this.badgeTextColor,
    this.badgeBackground,
    this.avatarBackground,
    this.versionTextColor,
    this.cacheTextColor,

    // 按钮
    this.logoutButtonTextColor,
    this.logoutButtonBackground,

    // 学生信息
    this.studentInfoTextColor,
  });

  static const light = MeTheme(
    cardBackground: Colors.white,
    cardBoxShadow: Color(0x0A021B25),
    phoneTextColor: Color(0xFF8C715C),
    editableTextColor: Color(0xFF302008),
    editableBackground: Color(0x33FFFFFF),
    badgeTextColor: Colors.white,
    badgeBackground: Color(0xFFFF8A8E),
    avatarBackground: Color(0xFFA8DEFF),
    versionTextColor: Color(0xFFB1AFAF),
    cacheTextColor: Color(0xFFB1AFAF),

    // 按钮
    logoutButtonTextColor: Color(0xFFEF516A),
    logoutButtonBackground: Colors.white,

    // 学生信息
    studentInfoTextColor: Colors.white,
  );
  static const dark = light;

  @override
  ThemeExtension<MeTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<MeTheme> lerp(ThemeExtension<MeTheme>? other, double t) {
    if (other is! MeTheme) {
      return this;
    }
    return MeTheme(
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t),
      cardBoxShadow: Color.lerp(cardBoxShadow, other.cardBoxShadow, t),
      phoneTextColor: Color.lerp(phoneTextColor, other.phoneTextColor, t),
      editableTextColor:
          Color.lerp(editableTextColor, other.editableTextColor, t),
      editableBackground:
          Color.lerp(editableBackground, other.editableBackground, t),
      badgeTextColor: Color.lerp(badgeTextColor, other.badgeTextColor, t),
      badgeBackground: Color.lerp(badgeBackground, other.badgeBackground, t),
      avatarBackground: Color.lerp(avatarBackground, other.avatarBackground, t),
      versionTextColor: Color.lerp(versionTextColor, other.versionTextColor, t),
      cacheTextColor: Color.lerp(cacheTextColor, other.cacheTextColor, t),

      // 按钮
      logoutButtonTextColor:
          Color.lerp(logoutButtonTextColor, other.logoutButtonTextColor, t),
      logoutButtonBackground:
          Color.lerp(logoutButtonBackground, other.logoutButtonBackground, t),

      // 学生信息
      studentInfoTextColor:
          Color.lerp(studentInfoTextColor, other.studentInfoTextColor, t),
    );
  }
}
