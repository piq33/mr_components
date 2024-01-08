import 'package:flutter/material.dart';

class ConservationTheme extends ThemeExtension<ConservationTheme> {
  // 日报
  final Color? reportTitleColor;
  final Color? reportHighlightColor;

  // 日报详情
  final Color? detailDateTextColor;
  final Color? detailDateBackground;
  final Color? textColor;
  final Color? highlightTextColor;
  final Color? sectionTitleColor;
  final Color? moduleTitleColor;
  final Color? questionnaireTitleColor;
  final Color? evaluateStartColor;

  const ConservationTheme({
    // 日报
    this.reportTitleColor,
    this.reportHighlightColor,

    // 日报详情
    this.detailDateTextColor,
    this.detailDateBackground,
    this.textColor,
    this.highlightTextColor,
    this.sectionTitleColor,
    this.moduleTitleColor,
    this.questionnaireTitleColor,
    this.evaluateStartColor,
  });

  static const light = ConservationTheme(
    // 日报
    reportTitleColor: Color(0xFFA15D00),
    reportHighlightColor: Color(0xFFFF5A5A),

    // 日报详情
    detailDateTextColor: Colors.white,
    detailDateBackground: Color(0xFFFFC069),
    textColor: Colors.black,
    highlightTextColor: Color(0xFFA15D00),
    sectionTitleColor: Color(0xFFB15907),
    moduleTitleColor: Color(0xFFEF8A00),
    questionnaireTitleColor: Color(0xFFA15D00),
    evaluateStartColor: Color(0xFF2EA23B),
  );
  static const dark = light;

  @override
  ThemeExtension<ConservationTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<ConservationTheme> lerp(
      ThemeExtension<ConservationTheme>? other, double t) {
    if (other is! ConservationTheme) {
      return this;
    }
    return ConservationTheme(
      // 日报
      reportTitleColor: Color.lerp(reportTitleColor, other.reportTitleColor, t),
      reportHighlightColor:
          Color.lerp(reportHighlightColor, other.reportHighlightColor, t),

      // 日报详情
      detailDateTextColor:
          Color.lerp(detailDateTextColor, other.detailDateTextColor, t),
      detailDateBackground:
          Color.lerp(detailDateBackground, other.detailDateBackground, t),
      textColor: Color.lerp(textColor, other.textColor, t),
      highlightTextColor:
          Color.lerp(highlightTextColor, other.highlightTextColor, t),
      sectionTitleColor:
          Color.lerp(sectionTitleColor, other.sectionTitleColor, t),
      moduleTitleColor: Color.lerp(moduleTitleColor, other.moduleTitleColor, t),
      questionnaireTitleColor:
          Color.lerp(questionnaireTitleColor, other.questionnaireTitleColor, t),
      evaluateStartColor:
          Color.lerp(evaluateStartColor, other.evaluateStartColor, t),
    );
  }
}
