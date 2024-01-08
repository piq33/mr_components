import 'package:components/resource/colors.gen.dart';
import 'package:flutter/material.dart';

class SchoolTheme extends ThemeExtension<SchoolTheme> {
  final Color? scaffoldBackground;
  final Color? bodyDividerColor;
  final Color? tabSelectedTextColor;
  final Color? tabUnselectedTextColor;
  final Color? tabSelectedIndicatorColor;
  final Color? tabUnselectedIndicatorColor;

  // 侧边栏
  final Color? downloadButtonBackground;
  final Color? downloadButtonTextColor;
  final Color? switcherButtonBackground;
  final Color? switcherButtonTextColor;

  // 家长侧边栏
  final Color? studentCodeBackground;
  final Color? studentInfoDividerColor;
  final Color? studentHighlightBackground;
  final Color? schoolBackground;
  final Color? schoolHighlightBackground;
  final Color? schoolHighlightBorderColor;
  final Color? schoolNormalBackground;
  final Color? schoolNormalBorderColor;

  // 游客侧边栏
  final Color? addBabyButtonBorderColor;
  final Color? addBabyButtonIconColor;

  // 学生信息
  final Color? studentInfoTextColor;
  final Color? studentInfoBackground;

  // 公告
  final Color? announcementBackground;
  final Color? announcementBoxShadow;

  // 待办事项
  final Color? todoTitleColor;

  // H5入口
  final Color? entranceSelectedIndicatorStartColor;
  final Color? entranceSelectedIndicatorEndColor;
  final Color? entranceUnselectedIndicatorColor;

  // banner
  final Color? bannerSelectedIndicatorStartColor;
  final Color? bannerSelectedIndicatorEndColor;
  final Color? bannerUnselectedIndicatorColor;

  // 食谱
  final Color? recipesTitleColor;
  final Color? recipesTextBackground;
  final Color? recipesThumbColor;
  final Color? recipesTrackBackground;

  // 剪影
  final Color? clipTitleColor;

  // 报名按钮
  final Color? applyButtonBackground;
  final Color? applyButtonIconColor;

  // 活动
  final Color? activityItemBackground;

  // 活动中心
  final Color? tabBarBackground;
  final Color? tabBarIndicatorColor;
  final Color? tabBarSelectedTextColor;
  final Color? tabBarUnselectedTextColor;
  final Color? userCenterBackground;

  // 个人中心
  final Color? activityAppliedColor;
  final Color? activitySignedColor;

  // 资料收集/补充
  final Color? infoCardBackground;

  // 选修课程
  final Color? courseColor;

  // 一日生活
  final Color? everydayTitleColor;

  const SchoolTheme({
    this.scaffoldBackground,
    this.bodyDividerColor,
    this.tabSelectedTextColor,
    this.tabUnselectedTextColor,
    this.tabSelectedIndicatorColor,
    this.tabUnselectedIndicatorColor,

    // 侧边栏
    this.downloadButtonBackground,
    this.downloadButtonTextColor,
    this.switcherButtonBackground,
    this.switcherButtonTextColor,

    // 家长侧边栏
    this.studentCodeBackground,
    this.studentInfoDividerColor,
    this.studentHighlightBackground,
    this.schoolBackground,
    this.schoolHighlightBackground,
    this.schoolHighlightBorderColor,
    this.schoolNormalBackground,
    this.schoolNormalBorderColor,

    // 游客侧边栏
    this.addBabyButtonBorderColor,
    this.addBabyButtonIconColor,

    // 学生信息
    this.studentInfoTextColor,
    this.studentInfoBackground,

    // 公告
    this.announcementBackground,
    this.announcementBoxShadow,

    // 待办事项
    this.todoTitleColor,

    // H5入口
    this.entranceSelectedIndicatorStartColor,
    this.entranceSelectedIndicatorEndColor,
    this.entranceUnselectedIndicatorColor,

    // banner
    this.bannerSelectedIndicatorStartColor,
    this.bannerSelectedIndicatorEndColor,
    this.bannerUnselectedIndicatorColor,

    // 食谱
    this.recipesTitleColor,
    this.recipesTextBackground,
    this.recipesThumbColor,
    this.recipesTrackBackground,

    // 剪影
    this.clipTitleColor,

    // 报名按钮
    this.applyButtonBackground,
    this.applyButtonIconColor,

    // 活动
    this.activityItemBackground,

    // 活动中心
    this.tabBarBackground,
    this.tabBarIndicatorColor,
    this.tabBarSelectedTextColor,
    this.tabBarUnselectedTextColor,
    this.userCenterBackground,

    // 个人中心
    this.activityAppliedColor,
    this.activitySignedColor,

    // 资料收集/补充
    this.infoCardBackground,

    // 选修课程
    this.courseColor,

    // 一日生活
    this.everydayTitleColor,
  });

  static const light = SchoolTheme(
    scaffoldBackground: Colors.white,
    bodyDividerColor: Color(0xFFF9FAFB),
    tabSelectedTextColor: ColorName.mainColor,
    tabUnselectedTextColor: Color(0xFFCCCCCC),
    tabSelectedIndicatorColor: ColorName.mainColor,
    tabUnselectedIndicatorColor: Color(0x1A666666),

    // 侧边栏
    downloadButtonBackground: ColorName.potentialMainColor,
    downloadButtonTextColor: Colors.white,
    switcherButtonBackground: Color(0xFFFFDF6C),
    switcherButtonTextColor: Color(0xFF333333),

    // 家长侧边栏
    studentCodeBackground: Color(0x80FFFFFF),
    studentInfoDividerColor: Color(0xFFE7E7E7),
    studentHighlightBackground: Color(0xFFF8FAFF),
    schoolBackground: Colors.white,
    schoolHighlightBackground: Color(0x26FFC069),
    schoolHighlightBorderColor: Color(0xFFFFC069),
    schoolNormalBorderColor: Color(0xFFCCCCCC),
    schoolNormalBackground: Colors.transparent,

    // 游客侧边栏
    addBabyButtonBorderColor: Color(0xFFCCCCCC),
    addBabyButtonIconColor: ColorName.mainColor,

    // 学生信息
    studentInfoTextColor: Colors.white,
    studentInfoBackground: Color(0x66FFFFFF),

    // 公告
    announcementBackground: Color(0xFFF3FCFF),
    announcementBoxShadow: Color(0x0A052843),

    // 待办事项
    todoTitleColor: Color(0xFF009DFF),

    // H5入口
    entranceSelectedIndicatorStartColor: Color(0xFFFFDF7F),
    entranceSelectedIndicatorEndColor: Color(0xFFFFA651),
    entranceUnselectedIndicatorColor: Color(0x1A666666),

    // banner
    bannerSelectedIndicatorStartColor: Color(0xFF37E4FC),
    bannerSelectedIndicatorEndColor: ColorName.potentialMainColor,
    bannerUnselectedIndicatorColor: Color(0x1A666666),

    // 食谱
    recipesTitleColor: Color(0xFF71BB92),
    recipesTextBackground: Color(0xFFFAFAFA),
    recipesThumbColor: Color(0xFFFFC069),
    recipesTrackBackground: Color(0xFFF3F3F3),

    // 剪影
    clipTitleColor: Color(0xFFFFC71F),

    // 报名按钮
    applyButtonBackground: Colors.white,
    applyButtonIconColor: ColorName.mainColor,

    // 活动
    activityItemBackground: Colors.white,

    // 活动中心
    tabBarBackground: Colors.white,
    tabBarIndicatorColor: Color(0x1A386FFC),
    tabBarSelectedTextColor: ColorName.potentialMainColor,
    tabBarUnselectedTextColor: Color(0xFFCCCCCC),
    userCenterBackground: Colors.white,

    // 个人中心
    activityAppliedColor: ColorName.potentialMainColor,
    activitySignedColor: Color(0xFF72BE1D),

    // 资料收集/补充
    infoCardBackground: Colors.white,

    // 选修课程
    courseColor: Color(0xFFFF5A5A),

    // 一日生活
    everydayTitleColor: Color(0xFFA796EE),
  );
  static const dark = light;

  @override
  ThemeExtension<SchoolTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<SchoolTheme> lerp(
      ThemeExtension<SchoolTheme>? other, double t) {
    if (other is! SchoolTheme) {
      return this;
    }
    return SchoolTheme(
      scaffoldBackground:
          Color.lerp(scaffoldBackground, other.scaffoldBackground, t),
      bodyDividerColor: Color.lerp(bodyDividerColor, other.bodyDividerColor, t),
      tabSelectedTextColor:
          Color.lerp(tabSelectedTextColor, other.tabSelectedTextColor, t),
      tabUnselectedTextColor:
          Color.lerp(tabUnselectedTextColor, other.tabUnselectedTextColor, t),
      tabSelectedIndicatorColor: Color.lerp(
          tabSelectedIndicatorColor, other.tabSelectedIndicatorColor, t),
      tabUnselectedIndicatorColor: Color.lerp(
          tabUnselectedIndicatorColor, other.tabUnselectedIndicatorColor, t),

      // 侧边栏
      downloadButtonBackground: Color.lerp(
          downloadButtonBackground, other.downloadButtonBackground, t),
      downloadButtonTextColor:
          Color.lerp(downloadButtonTextColor, other.downloadButtonTextColor, t),
      switcherButtonBackground: Color.lerp(
          switcherButtonBackground, other.switcherButtonBackground, t),
      switcherButtonTextColor:
          Color.lerp(switcherButtonTextColor, other.switcherButtonTextColor, t),

      // 家长侧边栏
      studentCodeBackground:
          Color.lerp(studentCodeBackground, other.studentCodeBackground, t),
      studentInfoDividerColor:
          Color.lerp(studentInfoDividerColor, other.studentInfoDividerColor, t),
      studentHighlightBackground: Color.lerp(
          studentHighlightBackground, other.studentHighlightBackground, t),
      schoolBackground: Color.lerp(schoolBackground, other.schoolBackground, t),
      schoolHighlightBackground: Color.lerp(
          schoolHighlightBackground, other.schoolHighlightBackground, t),
      schoolHighlightBorderColor: Color.lerp(
          schoolHighlightBorderColor, other.schoolHighlightBorderColor, t),
      schoolNormalBackground:
          Color.lerp(schoolNormalBackground, other.schoolNormalBackground, t),
      schoolNormalBorderColor:
          Color.lerp(schoolNormalBorderColor, other.schoolNormalBorderColor, t),

      // 游客侧边栏
      addBabyButtonBorderColor: Color.lerp(
          addBabyButtonBorderColor, other.addBabyButtonBorderColor, t),
      addBabyButtonIconColor:
          Color.lerp(addBabyButtonIconColor, other.addBabyButtonIconColor, t),

      // 学生信息
      studentInfoTextColor:
          Color.lerp(studentInfoTextColor, other.studentInfoTextColor, t),
      studentInfoBackground:
          Color.lerp(studentInfoBackground, other.studentInfoBackground, t),

      // 公告
      announcementBackground:
          Color.lerp(announcementBackground, other.announcementBackground, t),
      announcementBoxShadow:
          Color.lerp(announcementBoxShadow, other.announcementBoxShadow, t),

      // 待办事项
      todoTitleColor: Color.lerp(todoTitleColor, other.todoTitleColor, t),

      // H5入口
      entranceSelectedIndicatorStartColor: Color.lerp(
          entranceSelectedIndicatorStartColor,
          other.entranceSelectedIndicatorStartColor,
          t),
      entranceSelectedIndicatorEndColor: Color.lerp(
          entranceSelectedIndicatorEndColor,
          other.entranceSelectedIndicatorEndColor,
          t),
      entranceUnselectedIndicatorColor: Color.lerp(
          entranceUnselectedIndicatorColor,
          other.entranceUnselectedIndicatorColor,
          t),

      // banner
      bannerSelectedIndicatorStartColor: Color.lerp(
          bannerSelectedIndicatorStartColor,
          other.bannerSelectedIndicatorStartColor,
          t),
      bannerSelectedIndicatorEndColor: Color.lerp(
          bannerSelectedIndicatorEndColor,
          other.bannerSelectedIndicatorEndColor,
          t),
      bannerUnselectedIndicatorColor: Color.lerp(bannerUnselectedIndicatorColor,
          other.bannerUnselectedIndicatorColor, t),

      // 食谱
      recipesTitleColor:
          Color.lerp(recipesTitleColor, other.recipesTitleColor, t),
      recipesTextBackground:
          Color.lerp(recipesTextBackground, other.recipesTextBackground, t),
      recipesThumbColor:
          Color.lerp(recipesThumbColor, other.recipesThumbColor, t),
      recipesTrackBackground:
          Color.lerp(recipesTrackBackground, other.recipesTrackBackground, t),

      // 剪影
      clipTitleColor: Color.lerp(clipTitleColor, other.clipTitleColor, t),

      // 报名按钮
      applyButtonBackground:
          Color.lerp(applyButtonBackground, other.applyButtonBackground, t),
      applyButtonIconColor:
          Color.lerp(applyButtonIconColor, other.applyButtonIconColor, t),

      // 活动
      activityItemBackground:
          Color.lerp(activityItemBackground, other.activityItemBackground, t),

      // 活动中心
      tabBarBackground: Color.lerp(tabBarBackground, other.tabBarBackground, t),
      tabBarIndicatorColor:
          Color.lerp(tabBarIndicatorColor, other.tabBarIndicatorColor, t),
      tabBarSelectedTextColor:
          Color.lerp(tabBarSelectedTextColor, other.tabBarSelectedTextColor, t),
      tabBarUnselectedTextColor: Color.lerp(
          tabBarUnselectedTextColor, other.tabBarUnselectedTextColor, t),
      userCenterBackground:
          Color.lerp(userCenterBackground, other.userCenterBackground, t),

      // 个人中心
      activityAppliedColor:
          Color.lerp(activityAppliedColor, other.activityAppliedColor, t),
      activitySignedColor:
          Color.lerp(activitySignedColor, other.activitySignedColor, t),

      // 资料收集/补充
      infoCardBackground:
          Color.lerp(infoCardBackground, other.infoCardBackground, t),

      // 选修课程
      courseColor: Color.lerp(courseColor, other.courseColor, t),

      // 一日生活
      everydayTitleColor:
          Color.lerp(everydayTitleColor, other.everydayTitleColor, t),
    );
  }
}
