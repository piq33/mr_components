import 'package:flutter/material.dart';

class GenderTheme extends ThemeExtension<GenderTheme> {
  final Color? iconColor;

  final Color? femaleBackground;
  final Color? femaleTagBackground;
  final Color? maleBackground;
  final Color? maleTagBackground;

  const GenderTheme({
    this.iconColor,
    this.femaleBackground,
    this.femaleTagBackground,
    this.maleBackground,
    this.maleTagBackground,
  });

  static const light = GenderTheme(
    iconColor: Colors.white,
    femaleBackground: Color(0xFF009DFF),
    femaleTagBackground: Color(0x1AFF8C9B),
    maleBackground: Color(0xFFFF796D),
    maleTagBackground: Color(0x1A009DFF),
  );
  static const dark = light;

  @override
  ThemeExtension<GenderTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<GenderTheme> lerp(
      ThemeExtension<GenderTheme>? other, double t) {
    if (other is! GenderTheme) {
      return this;
    }
    return GenderTheme(
      iconColor: Color.lerp(iconColor, other.iconColor, t),
      femaleBackground: Color.lerp(femaleBackground, other.femaleBackground, t),
      femaleTagBackground:
          Color.lerp(femaleTagBackground, other.femaleTagBackground, t),
      maleBackground: Color.lerp(maleBackground, other.maleBackground, t),
      maleTagBackground:
          Color.lerp(maleTagBackground, other.maleTagBackground, t),
    );
  }
}
