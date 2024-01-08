import 'package:flutter/material.dart';

class BoSocialTheme extends ThemeExtension<BoSocialTheme> {
  final Color? tabIndicatorColor;
  final Color? searchDividerColor;
  final Color? searchBoxShadow;
  final Color? searchBackground;

  // 评论
  final Color? likeNumTextColor;
  final Color? hostTagTextColor;
  final Color? hostTagBackground;
  final Color? replyBackground;
  final Color? commentTextFieldHintColor;
  final Color? commentTextFieldBackground;
  final Color? commentButtonBackground;
  final Color? commentButtonTextColor;

  // 干货
  final Color? knowledgeScaffoldBackground;
  final Color? knowledgeBodyBackground;
  final Color? knowledgeCardColor;
  final Color? historySelectedTextColor;
  final Color? historySelectedIconColor;
  final Color? historySelectedBackground;
  final Color? historyUnselectedTextColor;
  final Color? historyUnselectedIconColor;
  final Color? historyUnselectedBackground;

  // 干货视频页
  final Color? knowledgeVideoBackground;
  final Color? knowledgeVideoGlobalShadow;
  final Color? knowledgeVideoGlobalColor;

  // 干货文章页
  final Color? knowledgeArticleBackground;
  final Color? knowledgeArticleTagBackground;

  // 干货标签drawer
  final Color? knowledgeTagDrawerBackground;
  final Color? knowledgeTagDrawerBoxShadow;
  final Color? knowledgeSelectedBorderColor;
  final Color? knowledgeSelectedTextColor;
  final Color? knowledgeSelectedBackground;
  final Color? knowledgeUnselectedBorderColor;
  final Color? knowledgeUnselectedTextColor;
  final Color? knowledgeUnselectedBackground;

  const BoSocialTheme({
    this.tabIndicatorColor,
    this.searchDividerColor,
    this.searchBoxShadow,
    this.searchBackground,

    // 评论
    this.likeNumTextColor,
    this.hostTagTextColor,
    this.hostTagBackground,
    this.replyBackground,
    this.commentTextFieldHintColor,
    this.commentTextFieldBackground,
    this.commentButtonBackground,
    this.commentButtonTextColor,

    // 干货
    this.knowledgeScaffoldBackground,
    this.knowledgeBodyBackground,
    this.knowledgeCardColor,
    this.historySelectedTextColor,
    this.historySelectedIconColor,
    this.historySelectedBackground,
    this.historyUnselectedTextColor,
    this.historyUnselectedIconColor,
    this.historyUnselectedBackground,

    // 干货视频页
    this.knowledgeVideoBackground,
    this.knowledgeVideoGlobalShadow,
    this.knowledgeVideoGlobalColor,

    // 干货文章页
    this.knowledgeArticleBackground,
    this.knowledgeArticleTagBackground,

    // 干货标签drawer
    this.knowledgeTagDrawerBackground,
    this.knowledgeTagDrawerBoxShadow,
    this.knowledgeSelectedBorderColor,
    this.knowledgeSelectedTextColor,
    this.knowledgeSelectedBackground,
    this.knowledgeUnselectedBorderColor,
    this.knowledgeUnselectedTextColor,
    this.knowledgeUnselectedBackground,
  });

  static const light = BoSocialTheme(
    tabIndicatorColor: Color(0xFFC39B2C),
    searchDividerColor: Color(0x1A000000),
    searchBoxShadow: Color(0x1FF7B431),
    searchBackground: Colors.white,

    // 评论
    likeNumTextColor: Color(0xFF565656),
    hostTagTextColor: Color(0xFFDBC500),
    hostTagBackground: Color(0xFFF7F7E2),
    replyBackground: Color(0xFFFAFBFF),
    commentTextFieldHintColor: Color(0xFF56BDFF),
    commentTextFieldBackground: Color(0xFFE9F6FF),
    commentButtonBackground: Color(0x1AFFB247),
    commentButtonTextColor: Color(0xFFFFB247),

    // 干货
    knowledgeScaffoldBackground: Colors.white,
    knowledgeBodyBackground: Color(0xFFF6FAFC),
    knowledgeCardColor: Colors.white,
    historySelectedTextColor: Colors.white,
    historySelectedIconColor: Colors.white,
    historySelectedBackground: Color(0xFFFFC069),
    historyUnselectedTextColor: Color(0xFF696969),
    historyUnselectedIconColor: Color(0xFFCCCCCC),
    historyUnselectedBackground: Color(0xFFF3F3F3),

    // 干货视频页
    knowledgeVideoBackground: Colors.black,
    knowledgeVideoGlobalShadow: Color(0x20000000),
    knowledgeVideoGlobalColor: Colors.white,

    // 干货文章页
    knowledgeArticleBackground: Colors.white,
    knowledgeArticleTagBackground: Color(0xFFFFF3F5),

    // 干货标签drawer
    knowledgeTagDrawerBackground: Colors.white,
    knowledgeTagDrawerBoxShadow: Color(0xFFE4E4E4),
    knowledgeSelectedBorderColor: Color(0xFFFFC069),
    knowledgeSelectedTextColor: Color(0xFFFFC069),
    knowledgeSelectedBackground: Color(0xFFFFF0DD),
    knowledgeUnselectedBorderColor: Colors.transparent,
    knowledgeUnselectedTextColor: Color(0xFF333333),
    knowledgeUnselectedBackground: Color(0xFFF3F3F3),
  );
  static const dark = light;

  @override
  ThemeExtension<BoSocialTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<BoSocialTheme> lerp(
      ThemeExtension<BoSocialTheme>? other, double t) {
    if (other is! BoSocialTheme) {
      return this;
    }
    return BoSocialTheme(
      tabIndicatorColor:
          Color.lerp(tabIndicatorColor, other.tabIndicatorColor, t),
      searchDividerColor:
          Color.lerp(searchDividerColor, other.searchDividerColor, t),
      searchBoxShadow: Color.lerp(searchBoxShadow, other.searchBoxShadow, t),
      searchBackground: Color.lerp(searchBackground, other.searchBackground, t),

      // 评论
      likeNumTextColor: Color.lerp(likeNumTextColor, other.likeNumTextColor, t),
      hostTagTextColor: Color.lerp(hostTagTextColor, other.hostTagTextColor, t),
      hostTagBackground:
          Color.lerp(hostTagBackground, other.hostTagBackground, t),
      replyBackground: Color.lerp(replyBackground, other.replyBackground, t),
      commentTextFieldHintColor: Color.lerp(
          commentTextFieldHintColor, other.commentTextFieldHintColor, t),
      commentTextFieldBackground: Color.lerp(
          commentTextFieldBackground, other.commentTextFieldBackground, t),
      commentButtonBackground:
          Color.lerp(commentButtonBackground, other.commentButtonBackground, t),
      commentButtonTextColor:
          Color.lerp(commentButtonTextColor, other.commentButtonTextColor, t),

      // 干货
      knowledgeScaffoldBackground: Color.lerp(
          knowledgeScaffoldBackground, other.knowledgeScaffoldBackground, t),
      knowledgeBodyBackground:
          Color.lerp(knowledgeBodyBackground, other.knowledgeBodyBackground, t),
      knowledgeCardColor:
          Color.lerp(knowledgeCardColor, other.knowledgeCardColor, t),
      historySelectedTextColor: Color.lerp(
          historySelectedTextColor, other.historySelectedTextColor, t),
      historySelectedIconColor: Color.lerp(
          historySelectedIconColor, other.historySelectedIconColor, t),
      historySelectedBackground: Color.lerp(
          historySelectedBackground, other.historySelectedBackground, t),
      historyUnselectedTextColor: Color.lerp(
          historyUnselectedTextColor, other.historyUnselectedTextColor, t),
      historyUnselectedIconColor: Color.lerp(
          historyUnselectedIconColor, other.historyUnselectedIconColor, t),
      historyUnselectedBackground: Color.lerp(
          historyUnselectedBackground, other.historyUnselectedBackground, t),

      // 干货视频页
      knowledgeVideoBackground: Color.lerp(
          knowledgeVideoBackground, other.knowledgeVideoBackground, t),
      knowledgeVideoGlobalShadow: Color.lerp(
          knowledgeVideoGlobalShadow, other.knowledgeVideoGlobalShadow, t),
      knowledgeVideoGlobalColor: Color.lerp(
          knowledgeVideoGlobalColor, other.knowledgeVideoGlobalColor, t),

      // 干货文章页
      knowledgeArticleBackground: Color.lerp(
          knowledgeArticleBackground, other.knowledgeArticleBackground, t),
      knowledgeArticleTagBackground: Color.lerp(knowledgeArticleTagBackground,
          other.knowledgeArticleTagBackground, t),

      // 干货标签drawer
      knowledgeTagDrawerBackground: Color.lerp(
          knowledgeTagDrawerBackground, other.knowledgeTagDrawerBackground, t),
      knowledgeTagDrawerBoxShadow: Color.lerp(
          knowledgeTagDrawerBoxShadow, other.knowledgeTagDrawerBoxShadow, t),
      knowledgeSelectedBorderColor: Color.lerp(
          knowledgeSelectedBorderColor, other.knowledgeSelectedBorderColor, t),
      knowledgeSelectedTextColor: Color.lerp(
          knowledgeSelectedTextColor, other.knowledgeSelectedTextColor, t),
      knowledgeSelectedBackground: Color.lerp(
          knowledgeSelectedBackground, other.knowledgeSelectedBackground, t),
      knowledgeUnselectedBorderColor: Color.lerp(knowledgeUnselectedBorderColor,
          other.knowledgeUnselectedBorderColor, t),
      knowledgeUnselectedTextColor: Color.lerp(
          knowledgeUnselectedTextColor, other.knowledgeUnselectedTextColor, t),
      knowledgeUnselectedBackground: Color.lerp(knowledgeUnselectedBackground,
          other.knowledgeUnselectedBackground, t),
    );
  }
}
