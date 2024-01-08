import 'package:flutter/material.dart';

class RelationshipTheme extends ThemeExtension<RelationshipTheme> {
  final Color? defaultTagTextColor;
  final Color? defaultTagBackground;

  // 亲属
  final Color? femaleTagTextColor;
  final Color? femaleTagBackground;
  final Color? maleTagTextColor;
  final Color? maleTagBackground;

  // 教师
  final Color? teacherTagTextColor;
  final Color? teacherTagBackground;

  const RelationshipTheme({
    this.defaultTagTextColor,
    this.defaultTagBackground,

    // 亲属
    this.femaleTagTextColor,
    this.femaleTagBackground,
    this.maleTagTextColor,
    this.maleTagBackground,

    // 教师
    this.teacherTagTextColor,
    this.teacherTagBackground,
  });

  static const light = RelationshipTheme(
    defaultTagTextColor: Color(0xFF333333),
    defaultTagBackground: Colors.black12,

    // 亲属
    femaleTagTextColor: Color(0xFFFF8C9B),
    femaleTagBackground: Color(0x1AFF8C9B),
    maleTagTextColor: Color(0xFF009DFF),
    maleTagBackground: Color(0x1A009DFF),

    // 教师
    teacherTagTextColor: Color(0xFF009DFF),
    teacherTagBackground: Color(0x1A009DFF),
  );
  static const dark = light;

  @override
  ThemeExtension<RelationshipTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<RelationshipTheme> lerp(
      ThemeExtension<RelationshipTheme>? other, double t) {
    if (other is! RelationshipTheme) {
      return this;
    }
    return RelationshipTheme(
      defaultTagTextColor:
          Color.lerp(defaultTagTextColor, other.defaultTagTextColor, t),
      defaultTagBackground:
          Color.lerp(defaultTagBackground, other.defaultTagBackground, t),

      // 亲属
      femaleTagBackground:
          Color.lerp(femaleTagBackground, other.femaleTagBackground, t),
      femaleTagTextColor:
          Color.lerp(femaleTagTextColor, other.femaleTagTextColor, t),
      maleTagTextColor: Color.lerp(maleTagTextColor, other.maleTagTextColor, t),
      maleTagBackground:
          Color.lerp(maleTagBackground, other.maleTagBackground, t),

      // 教师
      teacherTagTextColor:
          Color.lerp(teacherTagTextColor, other.teacherTagTextColor, t),
      teacherTagBackground:
          Color.lerp(teacherTagBackground, other.teacherTagBackground, t),
    );
  }
}
