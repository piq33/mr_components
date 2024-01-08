import 'package:flutter/material.dart';

class DateSelectorTheme extends ThemeExtension<DateSelectorTheme> {
  final Color? weekNormalBackground;
  final Color? weekNormalTextColor;
  final Color? weekHighlightBackground;
  final Color? weekHighlightTextColor;
  final Color? weekdayContainerBackground;
  final Color? weekdayDisabledTextColor;
  final Color? weekdayNormalTextColor;
  final Color? weekdayHighlightBackground;
  final Color? weekdayHighlightBorderColor;
  final Color? weekdayHighlightTextColor;
  final Color? weekdayMarkerColor;

  const DateSelectorTheme({
    this.weekNormalBackground,
    this.weekNormalTextColor,
    this.weekHighlightBackground,
    this.weekHighlightTextColor,
    this.weekdayContainerBackground,
    this.weekdayDisabledTextColor,
    this.weekdayNormalTextColor,
    this.weekdayHighlightBackground,
    this.weekdayHighlightBorderColor,
    this.weekdayHighlightTextColor,
    this.weekdayMarkerColor,
  });

  static const light = DateSelectorTheme(
    weekNormalBackground: Colors.white,
    weekNormalTextColor: Color(0xFF333333),
    weekHighlightBackground: Color(0xFFFFC069),
    weekHighlightTextColor: Colors.white,
    weekdayContainerBackground: Colors.white,
    weekdayDisabledTextColor: Color(0xFFBBBBBB),
    weekdayNormalTextColor: Color(0xFF333333),
    weekdayHighlightBackground: Color(0x1AFFB247),
    weekdayHighlightBorderColor: Color(0xFFFFB247),
    weekdayHighlightTextColor: Color(0xFFFFB247),
    weekdayMarkerColor: Color(0xFFFFB247),
  );
  static const dark = light;

  @override
  ThemeExtension<DateSelectorTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<DateSelectorTheme> lerp(
      ThemeExtension<DateSelectorTheme>? other, double t) {
    if (other is! DateSelectorTheme) {
      return this;
    }
    return DateSelectorTheme(
      weekNormalBackground:
          Color.lerp(weekNormalBackground, other.weekNormalBackground, t),
      weekNormalTextColor:
          Color.lerp(weekNormalTextColor, other.weekNormalTextColor, t),
      weekHighlightBackground:
          Color.lerp(weekHighlightBackground, other.weekHighlightBackground, t),
      weekHighlightTextColor:
          Color.lerp(weekHighlightTextColor, other.weekHighlightTextColor, t),
      weekdayContainerBackground: Color.lerp(
          weekdayContainerBackground, other.weekdayContainerBackground, t),
      weekdayDisabledTextColor: Color.lerp(
          weekdayDisabledTextColor, other.weekdayDisabledTextColor, t),
      weekdayNormalTextColor:
          Color.lerp(weekdayNormalTextColor, other.weekdayNormalTextColor, t),
      weekdayHighlightBackground: Color.lerp(
          weekdayHighlightBackground, other.weekdayHighlightBackground, t),
      weekdayHighlightBorderColor: Color.lerp(
          weekdayHighlightBorderColor, other.weekdayHighlightBorderColor, t),
      weekdayHighlightTextColor: Color.lerp(
          weekdayHighlightTextColor, other.weekdayHighlightTextColor, t),
      weekdayMarkerColor:
          Color.lerp(weekdayMarkerColor, other.weekdayMarkerColor, t),
    );
  }
}
