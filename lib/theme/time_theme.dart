import 'package:components/resource/colors.gen.dart';
import 'package:flutter/material.dart';

class TimeTheme extends ThemeExtension<TimeTheme> {
  final Color? bodyBackground;
  final Color? dividerColor;
  final Color? floatButtonBoxShadow;
  final Color? floatButtonBackground1;
  final Color? floatButtonBackground2;

  // header
  final Color? studentAgeTextColor;
  final Color? studentClipTextColor;
  final Color? studentClipBackground1;
  final Color? studentClipBackground2;
  final Color? studentClipBackground3;

  // timeline
  final Color? lineColor;
  final Color? markerColor;
  final Color? yearTextColor;

  // moment
  final Color? momentBackground;
  final Color? editableIconColor;
  final Color? dropdownBackground;
  final Color? firstTagTextColor;
  final Color? firstTagBackground;
  final Color? otherTagTextColor;
  final Color? otherTagBackground;
  final Color? wonderfulTagTextColor;
  final Color? wonderfulTagBackground;
  final Color? achievementTagTextColor;
  final Color? achievementTagBackground;
  final Color? journalTagTextColor;
  final Color? journalTagBackground;
  final Color? defaultTagColor;
  final Color? defaultTagBackground;

  // 发布
  final Color? tagSelectedTextColor;
  final Color? tagSelectedBackground;
  final Color? tagUnselectedTextColor;
  final Color? tagUnselectedBackground;
  final Color? fileBorderColor;
  final Color? contentHintBackground;
  final Color? contentHintBorderColor;
  final Color? mediaOuterBackground;

  const TimeTheme({
    this.bodyBackground,
    this.dividerColor,
    this.floatButtonBoxShadow,
    this.floatButtonBackground1,
    this.floatButtonBackground2,

    // header
    this.studentAgeTextColor,
    this.studentClipTextColor,
    this.studentClipBackground1,
    this.studentClipBackground2,
    this.studentClipBackground3,

    // timeline
    this.lineColor,
    this.markerColor,
    this.yearTextColor,

    // moment
    this.momentBackground,
    this.editableIconColor,
    this.dropdownBackground,
    this.firstTagTextColor,
    this.firstTagBackground,
    this.otherTagTextColor,
    this.otherTagBackground,
    this.wonderfulTagTextColor,
    this.wonderfulTagBackground,
    this.achievementTagTextColor,
    this.achievementTagBackground,
    this.journalTagTextColor,
    this.journalTagBackground,
    this.defaultTagColor,
    this.defaultTagBackground,

    // 发布
    this.tagSelectedTextColor,
    this.tagSelectedBackground,
    this.tagUnselectedTextColor,
    this.tagUnselectedBackground,
    this.fileBorderColor,
    this.contentHintBackground,
    this.contentHintBorderColor,
    this.mediaOuterBackground,
  });

  static const light = TimeTheme(
    bodyBackground: Colors.white,
    dividerColor: Color(0xFFEEEEEE),
    floatButtonBoxShadow: Color(0x61FFB247),
    floatButtonBackground1: Color(0xFFFFD987),
    floatButtonBackground2: Color(0xFFFFB34A),

    // header
    studentAgeTextColor: Colors.white,
    studentClipTextColor: Color(0xFF302008),
    studentClipBackground1: Color(0xCCFFFFFF),
    studentClipBackground2: Color(0xA3FFFFFF),
    studentClipBackground3: Color(0xCCFFFFFF),

    // timeline
    lineColor: ColorName.mainColor,
    markerColor: ColorName.mainColor,
    yearTextColor: Color(0xFF143145),

    // moment
    momentBackground: Color(0xFFF6FAFC),
    editableIconColor: Color(0xFFDBDBDB),
    dropdownBackground: Colors.white,
    firstTagTextColor: Color(0xFF009DFF),
    firstTagBackground: Color(0x1A009DFF),
    otherTagTextColor: Color(0xFF18A628),
    otherTagBackground: Color(0xFFB4DAB8),
    wonderfulTagTextColor: Color(0xFFF14A4A),
    wonderfulTagBackground: Color(0xCCF6DCDC),
    achievementTagTextColor: Color(0xE6C98500),
    achievementTagBackground: Color(0xCCECE3C8),
    journalTagTextColor: Color(0xE68845F6),
    journalTagBackground: Color(0xCCD3CBE2),
    defaultTagColor: Color(0xFF40D3A2),
    defaultTagBackground: Color(0x1A40D3A2),

    // 发布
    tagSelectedTextColor: Colors.white,
    tagSelectedBackground: ColorName.mainColor,
    tagUnselectedTextColor: Color(0xFF333333),
    tagUnselectedBackground: Color(0xFFF7F6F3),
    fileBorderColor: Color(0xFFE6E6E6),
    contentHintBackground: Color(0x0A021B25),
    contentHintBorderColor: Color(0xFFEAEFF4),
    mediaOuterBackground: Color(0xFFFFDF7F),
  );
  static const dark = light;

  @override
  ThemeExtension<TimeTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<TimeTheme> lerp(ThemeExtension<TimeTheme>? other, double t) {
    if (other is! TimeTheme) {
      return this;
    }
    return TimeTheme(
      bodyBackground: Color.lerp(bodyBackground, other.bodyBackground, t),
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t),
      floatButtonBoxShadow:
          Color.lerp(floatButtonBoxShadow, other.floatButtonBoxShadow, t),
      floatButtonBackground1:
          Color.lerp(floatButtonBackground1, other.floatButtonBackground1, t),
      floatButtonBackground2:
          Color.lerp(floatButtonBackground2, other.floatButtonBackground2, t),

      // header
      studentAgeTextColor:
          Color.lerp(studentAgeTextColor, other.studentAgeTextColor, t),
      studentClipTextColor:
          Color.lerp(studentClipTextColor, other.studentClipTextColor, t),
      studentClipBackground1:
          Color.lerp(studentClipBackground1, other.studentClipBackground1, t),
      studentClipBackground2:
          Color.lerp(studentClipBackground2, other.studentClipBackground2, t),
      studentClipBackground3:
          Color.lerp(studentClipBackground3, other.studentClipBackground3, t),

      // timeline
      lineColor: Color.lerp(lineColor, other.lineColor, t),
      markerColor: Color.lerp(markerColor, other.markerColor, t),
      yearTextColor: Color.lerp(yearTextColor, other.yearTextColor, t),

      // moment
      momentBackground: Color.lerp(momentBackground, other.momentBackground, t),
      editableIconColor:
          Color.lerp(editableIconColor, other.editableIconColor, t),
      dropdownBackground:
          Color.lerp(dropdownBackground, other.dropdownBackground, t),
      firstTagTextColor:
          Color.lerp(firstTagTextColor, other.firstTagTextColor, t),
      firstTagBackground:
          Color.lerp(firstTagBackground, other.firstTagBackground, t),
      otherTagTextColor:
          Color.lerp(otherTagTextColor, other.otherTagTextColor, t),
      otherTagBackground:
          Color.lerp(otherTagBackground, other.otherTagBackground, t),
      wonderfulTagTextColor:
          Color.lerp(wonderfulTagTextColor, other.wonderfulTagTextColor, t),
      wonderfulTagBackground:
          Color.lerp(wonderfulTagBackground, other.wonderfulTagBackground, t),
      achievementTagTextColor:
          Color.lerp(achievementTagTextColor, other.achievementTagTextColor, t),
      achievementTagBackground: Color.lerp(
          achievementTagBackground, other.achievementTagBackground, t),
      journalTagTextColor:
          Color.lerp(journalTagTextColor, other.journalTagTextColor, t),
      journalTagBackground:
          Color.lerp(journalTagBackground, other.journalTagBackground, t),
      defaultTagColor: Color.lerp(defaultTagColor, other.defaultTagColor, t),
      defaultTagBackground:
          Color.lerp(defaultTagBackground, other.defaultTagBackground, t),

      // 发布
      tagSelectedTextColor:
          Color.lerp(tagSelectedTextColor, other.tagSelectedTextColor, t),
      tagSelectedBackground:
          Color.lerp(tagSelectedBackground, other.tagSelectedBackground, t),
      tagUnselectedTextColor:
          Color.lerp(tagUnselectedTextColor, other.tagUnselectedTextColor, t),
      tagUnselectedBackground:
          Color.lerp(tagUnselectedBackground, other.tagUnselectedBackground, t),
      fileBorderColor: Color.lerp(fileBorderColor, other.fileBorderColor, t),
      contentHintBackground:
          Color.lerp(contentHintBackground, other.contentHintBackground, t),
      contentHintBorderColor:
          Color.lerp(contentHintBorderColor, other.contentHintBorderColor, t),
      mediaOuterBackground:
          Color.lerp(mediaOuterBackground, other.mediaOuterBackground, t),
    );
  }
}
