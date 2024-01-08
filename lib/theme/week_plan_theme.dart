import 'package:flutter/material.dart';

class WeekPlanTheme extends ThemeExtension<WeekPlanTheme> {
  final Color? markerColor;

  // 计划详情
  final Color? cardBackground;
  final Color? dividerColor;
  final Color? titleColor;
  final Color? titleBackground;
  final Color? targetTitleColor;
  final Color? collapsedTextColor;
  final Color? lessonBackground;
  final Color? cardDisabledTextColor;
  final Color? cardDisabledBackground;

  const WeekPlanTheme({
    this.markerColor,

    // 计划详情
    this.cardBackground,
    this.dividerColor,
    this.titleColor,
    this.titleBackground,
    this.targetTitleColor,
    this.collapsedTextColor,
    this.lessonBackground,
    this.cardDisabledTextColor,
    this.cardDisabledBackground,
  });

  static const light = WeekPlanTheme(
    markerColor: Color(0xFFFFDF7F),

    // 计划详情
    cardBackground: Colors.white,
    dividerColor: Color(0xFFEEEEEE),
    titleColor: Color(0xFF143145),
    titleBackground: Color(0xFFE3EDF4),
    targetTitleColor: Color(0xFF6F83F1),
    collapsedTextColor: Color(0xFF799DB5),
    lessonBackground: Color(0xFFF6FAFC),
    cardDisabledTextColor: Color(0xFFF8F8F8),
    cardDisabledBackground: Color(0xFFCCCCCC),
  );
  static const dark = light;

  @override
  ThemeExtension<WeekPlanTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<WeekPlanTheme> lerp(
      ThemeExtension<WeekPlanTheme>? other, double t) {
    if (other is! WeekPlanTheme) {
      return this;
    }
    return WeekPlanTheme(
      markerColor: Color.lerp(markerColor, other.markerColor, t),

      // 计划详情
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t),
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t),
      titleColor: Color.lerp(titleColor, other.titleColor, t),
      titleBackground: Color.lerp(titleBackground, other.titleBackground, t),
      targetTitleColor: Color.lerp(targetTitleColor, other.targetTitleColor, t),
      collapsedTextColor:
          Color.lerp(collapsedTextColor, other.collapsedTextColor, t),
      lessonBackground: Color.lerp(lessonBackground, other.lessonBackground, t),
      cardDisabledTextColor:
          Color.lerp(cardDisabledTextColor, other.cardDisabledTextColor, t),
      cardDisabledBackground:
          Color.lerp(cardDisabledBackground, other.cardDisabledBackground, t),
    );
  }
}
