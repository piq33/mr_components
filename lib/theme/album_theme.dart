import 'package:flutter/material.dart';

class AlbumTheme extends ThemeExtension<AlbumTheme> {
  final Color? background;
  final Color? badgeBackground;
  final Color? badgeTextColor;
  final Color? bodyDividerColor;
  final Color? moreTextColor;

  // 剪影类别tag
  final Color? schoolTagBackground;
  final Color? schoolTagTextColor;
  final Color? classTagBackground;
  final Color? classTagTextColor;
  final Color? individualTagBackground;
  final Color? individualTagTextColor;

  // 评论
  final Color? replyBackground;
  final Color? hostTagTextColor;
  final Color? hostTagBackground;
  final Color? commentTotalHighlightTextColor;
  final Color? commentTextFieldHintColor;
  final Color? commentTextFieldBorderColor;
  final Color? commentTextFieldBackground;
  final Color? commentButtonBackground;
  final Color? commentButtonTextColor;

  const AlbumTheme({
    this.background,
    this.badgeTextColor,
    this.badgeBackground,
    this.bodyDividerColor,
    this.moreTextColor,

    // 剪影类别tag
    this.schoolTagBackground,
    this.schoolTagTextColor,
    this.classTagBackground,
    this.classTagTextColor,
    this.individualTagBackground,
    this.individualTagTextColor,

    // 评论
    this.replyBackground,
    this.hostTagTextColor,
    this.hostTagBackground,
    this.commentTotalHighlightTextColor,
    this.commentTextFieldHintColor,
    this.commentTextFieldBorderColor,
    this.commentTextFieldBackground,
    this.commentButtonBackground,
    this.commentButtonTextColor,
  });

  static const light = AlbumTheme(
    background: Colors.white,
    badgeBackground: Color(0xFF72C9FF),
    bodyDividerColor: Color(0xFFF9FAFB),
    badgeTextColor: Colors.white,
    moreTextColor: Colors.white,

    // 剪影类别tag
    schoolTagBackground: Color(0xFFEDE2FF),
    schoolTagTextColor: Color(0xFF996EDE),
    classTagBackground: Color(0xFFFFE3D4),
    classTagTextColor: Color(0xFFE46D34),
    individualTagBackground: Color(0xFFFFE8C7),
    individualTagTextColor: Color(0xFFCA9C5A),

    // 评论
    replyBackground: Color(0xFFFAFBFF),
    hostTagTextColor: Color(0xFFDBC500),
    hostTagBackground: Color(0xFFF7F7E2),
    commentTotalHighlightTextColor: Color(0xFF72C9FF),
    commentTextFieldHintColor: Color(0xFFBBBBBB),
    commentTextFieldBorderColor: Color(0xFFE9EEF3),
    commentTextFieldBackground: Color(0xFFF7FAFC),
    commentButtonBackground: Color(0x1AFFB247),
    commentButtonTextColor: Color(0xFFFFB247),
  );
  static const dark = light;

  @override
  ThemeExtension<AlbumTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<AlbumTheme> lerp(ThemeExtension<AlbumTheme>? other, double t) {
    if (other is! AlbumTheme) {
      return this;
    }
    return AlbumTheme(
      background: Color.lerp(background, other.background, t),
      badgeBackground: Color.lerp(badgeBackground, other.badgeBackground, t),
      badgeTextColor: Color.lerp(badgeTextColor, other.badgeTextColor, t),
      bodyDividerColor: Color.lerp(bodyDividerColor, other.bodyDividerColor, t),
      moreTextColor: Color.lerp(moreTextColor, other.moreTextColor, t),

      // 剪影类别tag
      schoolTagBackground:
          Color.lerp(schoolTagBackground, other.schoolTagBackground, t),
      schoolTagTextColor:
          Color.lerp(schoolTagTextColor, other.schoolTagTextColor, t),
      classTagBackground:
          Color.lerp(classTagBackground, other.classTagBackground, t),
      classTagTextColor:
          Color.lerp(classTagTextColor, other.classTagTextColor, t),
      individualTagBackground:
          Color.lerp(individualTagBackground, other.individualTagBackground, t),
      individualTagTextColor:
          Color.lerp(individualTagTextColor, other.individualTagTextColor, t),

      // 评论
      replyBackground: Color.lerp(replyBackground, other.replyBackground, t),
      hostTagTextColor: Color.lerp(hostTagTextColor, other.hostTagTextColor, t),
      hostTagBackground:
          Color.lerp(hostTagBackground, other.hostTagBackground, t),
      commentTotalHighlightTextColor: Color.lerp(commentTotalHighlightTextColor,
          other.commentTotalHighlightTextColor, t),
      commentTextFieldHintColor: Color.lerp(
          commentTextFieldHintColor, other.commentTextFieldHintColor, t),
      commentTextFieldBorderColor: Color.lerp(
          commentTextFieldBorderColor, other.commentTextFieldBorderColor, t),
      commentTextFieldBackground: Color.lerp(
          commentTextFieldBackground, other.commentTextFieldBackground, t),
      commentButtonBackground:
          Color.lerp(commentButtonBackground, other.commentButtonBackground, t),
      commentButtonTextColor:
          Color.lerp(commentButtonTextColor, other.commentButtonTextColor, t),
    );
  }
}
