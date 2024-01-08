import 'package:bsl/resource/colors.gen.dart';
import 'package:flutter/material.dart';

class RecipesTheme extends ThemeExtension<RecipesTheme> {
  final Color? cardBackground;
  final Color? sectionTitleColor;
  final Color? recipesMarkerColor;

  // 菜谱
  final Color? breakfastColor;
  final Color? fruitColor;
  final Color? lunchColor;
  final Color? teaColor;
  final Color? dinnerColor;
  final Color? defaultColor;

  const RecipesTheme({
    this.cardBackground,
    this.sectionTitleColor,
    this.recipesMarkerColor,

    // 菜谱
    this.breakfastColor,
    this.fruitColor,
    this.lunchColor,
    this.teaColor,
    this.dinnerColor,
    this.defaultColor,
  });

  static const light = RecipesTheme(
    cardBackground: Colors.white,
    sectionTitleColor: Color(0xFF009DFF),
    recipesMarkerColor: ColorName.mainColor,

    // 菜谱
    breakfastColor: Color(0xFFD09114),
    fruitColor: Color(0xFF0099EF),
    lunchColor: Color(0xFFA07DD3),
    teaColor: Color(0xFF4AB465),
    dinnerColor: Color(0xFFDA846F),
    defaultColor: Color(0xFF333333),
  );
  static const dark = light;

  @override
  ThemeExtension<RecipesTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<RecipesTheme> lerp(
      ThemeExtension<RecipesTheme>? other, double t) {
    if (other is! RecipesTheme) {
      return this;
    }
    return RecipesTheme(
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t),
      sectionTitleColor:
          Color.lerp(sectionTitleColor, other.sectionTitleColor, t),
      recipesMarkerColor:
          Color.lerp(recipesMarkerColor, other.recipesMarkerColor, t),

      // 菜谱
      breakfastColor: Color.lerp(breakfastColor, other.breakfastColor, t),
      fruitColor: Color.lerp(fruitColor, other.fruitColor, t),
      lunchColor: Color.lerp(lunchColor, other.lunchColor, t),
      teaColor: Color.lerp(teaColor, other.teaColor, t),
      dinnerColor: Color.lerp(dinnerColor, other.dinnerColor, t),
      defaultColor: Color.lerp(defaultColor, other.defaultColor, t),
    );
  }
}
