import 'package:bsl/resource/colors.gen.dart';
import 'package:flutter/material.dart';

class MainTheme extends ThemeExtension<MainTheme> {
  // 布局
  final Color? dividerColor;

  // 表单
  final Color? singleRowFormBackground;
  final Color? singleRowFormRequiredColor;
  final Color? multiRowFormBackground;
  final Color? multiRowFormRequiredColor;

  // 文本
  final Color? appbarTextColor;
  final Color? potentialAppbarTextColor;
  final Color? titleColor;
  final Color? textColor;
  final Color? subTextColor;
  final Color? cornerTextColor;
  final Color? hintTextColor;
  final Color? highlightTextColor;
  final Color? warningTextColor;
  final Color? badgeTextColor;
  final Color? noMoreContent;
  final Color? hyperlinkColor;

  // 图标
  final Color? markerColor;
  final Color? badgeColor;
  final Color? loadingColor;

  // 组件
  final Color? cardBoxBackground;
  final Color? cardBoxShadow;
  final Color? cardBoxBorderColor;
  final Color? avatarBackground;
  final Color? radioCheckColor;
  final Color? radioSelectedColor;
  final Color? radioDefaultColor;
  final Color? radioButtonSelectedColor;
  final Color? radioButtonUnselectedColor;

  // 按钮
  final Color? mainButtonBackground;
  final Color? mainButtonBorderColor;
  final Color? mainButtonTextColor;
  final Color? subButtonBackground;
  final Color? subButtonBorderColor;
  final Color? subButtonTextColor;
  final Color? disabledButtonTextColor;
  final Color? disabledButtonBackground;

  // 弹窗
  final Color? dialogBackground;
  final Color? dialogConfirmButtonBackground;
  final Color? dialogConfirmButtonTextColor;
  final Color? dialogCancelButtonBackground;
  final Color? dialogCancelButtonTextColor;

  // 底部弹框
  final Color? bottomSheetBackground;
  final Color? bottomSheetConfirmTextColor;
  final Color? bottomSheetCancelTextColor;

  // 园所
  final Color? kindergartenBorderColor;
  final Color? kindergartenTitleBackground;
  final Color? kindergartenBackground1;
  final Color? kindergartenBackground2;
  final Color? promotionTitleColor;
  final Color? promotionBackground1;
  final Color? promotionBackground2;

  const MainTheme({
    // 布局
    this.dividerColor,

    // 表单
    this.singleRowFormBackground,
    this.singleRowFormRequiredColor,
    this.multiRowFormBackground,
    this.multiRowFormRequiredColor,

    // 文本
    this.appbarTextColor,
    this.potentialAppbarTextColor,
    this.titleColor,
    this.textColor,
    this.subTextColor,
    this.cornerTextColor,
    this.hintTextColor,
    this.highlightTextColor,
    this.warningTextColor,
    this.badgeTextColor,
    this.noMoreContent,
    this.hyperlinkColor,

    // 图标
    this.markerColor,
    this.badgeColor,
    this.loadingColor,

    // 组件
    this.cardBoxBackground,
    this.cardBoxShadow,
    this.cardBoxBorderColor,
    this.avatarBackground,
    this.radioCheckColor,
    this.radioSelectedColor,
    this.radioDefaultColor,
    this.radioButtonSelectedColor,
    this.radioButtonUnselectedColor,

    // 按钮
    this.mainButtonBackground,
    this.mainButtonBorderColor,
    this.mainButtonTextColor,
    this.subButtonBackground,
    this.subButtonBorderColor,
    this.subButtonTextColor,
    this.disabledButtonTextColor,
    this.disabledButtonBackground,

    // 弹窗
    this.dialogBackground,
    this.dialogConfirmButtonBackground,
    this.dialogConfirmButtonTextColor,
    this.dialogCancelButtonBackground,
    this.dialogCancelButtonTextColor,

    // 底部弹框
    this.bottomSheetBackground,
    this.bottomSheetConfirmTextColor,
    this.bottomSheetCancelTextColor,

    // 园所
    this.kindergartenBorderColor,
    this.kindergartenTitleBackground,
    this.kindergartenBackground1,
    this.kindergartenBackground2,
    this.promotionTitleColor,
    this.promotionBackground1,
    this.promotionBackground2,
  });

  static const light = MainTheme(
    // 布局
    dividerColor: Color(0xFFF1F4F8),

    // 表单
    singleRowFormBackground: Colors.white,
    singleRowFormRequiredColor: Color(0xFFFB3B54),
    multiRowFormBackground: Color(0xFFF5F5F5),
    multiRowFormRequiredColor: Color(0xFF333333),

    // 文本
    appbarTextColor: Color(0xFF333333),
    potentialAppbarTextColor: Color(0xFF333333),
    titleColor: Color(0xFF333333),
    textColor: Color(0xFF666666),
    subTextColor: Color(0xFF999999),
    cornerTextColor: Color(0xFFCCCCCC),
    hintTextColor: Color(0xFFBBBBBB),
    highlightTextColor: ColorName.mainColor,
    warningTextColor: Color(0xFFFFA82F),
    badgeTextColor: Colors.white,
    noMoreContent: Color(0xFFBBBBBB),
    hyperlinkColor: Color(0xFF009DFF),

    // 图标
    markerColor: ColorName.mainColor,
    badgeColor: Color(0xFFFB3B54),
    loadingColor: Color(0xFFBBBBBB),

    // 组件
    cardBoxBackground: Colors.white,
    cardBoxShadow: Color(0x0A021B25),
    cardBoxBorderColor: Color(0xFFECECEC),
    avatarBackground: Color(0xFFDFDFDF),
    radioCheckColor: Colors.white,
    radioSelectedColor: ColorName.mainColor,
    radioDefaultColor: Color(0xFFCCCCCC),
    radioButtonSelectedColor: ColorName.mainColor,
    radioButtonUnselectedColor: Color(0xFFCCCCCC),

    // 按钮
    mainButtonBackground: Color(0xFFFFDF7F),
    mainButtonBorderColor: Colors.transparent,
    mainButtonTextColor: Color(0xFF67420F),
    subButtonBackground: Colors.white,
    subButtonBorderColor: Color(0xFFCCCCCC),
    subButtonTextColor: Color(0xFF666666),
    disabledButtonTextColor: Color(0xFF333333),
    disabledButtonBackground: Color(0xFFCCCCCC),

    // 弹窗
    dialogBackground: Colors.white,
    dialogConfirmButtonBackground: Color(0xFFFFDF7F),
    dialogConfirmButtonTextColor: Color(0xFF67420F),
    dialogCancelButtonBackground: Color(0xFFF7F7F8),
    dialogCancelButtonTextColor: Color(0xFF999999),

    // 底部弹框
    bottomSheetBackground: Colors.white,
    bottomSheetConfirmTextColor: ColorName.mainColor,
    bottomSheetCancelTextColor: Color(0xFF999999),

    // 园所
    kindergartenBorderColor: Color(0xFFFBF2E3),
    kindergartenTitleBackground: Colors.white,
    kindergartenBackground1: Color(0xFFFDFBEF),
    kindergartenBackground2: Colors.white,
    promotionTitleColor: Color(0xFFFFB800),
    promotionBackground1: Color(0x80A8E25E),
    promotionBackground2: Colors.white,
  );
  static const dark = light;

  @override
  ThemeExtension<MainTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<MainTheme> lerp(ThemeExtension<MainTheme>? other, double t) {
    if (other is! MainTheme) {
      return this;
    }
    return MainTheme(
      // 布局
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t),

      // 表单
      singleRowFormBackground:
          Color.lerp(singleRowFormBackground, other.singleRowFormBackground, t),
      singleRowFormRequiredColor: Color.lerp(
          singleRowFormRequiredColor, other.singleRowFormRequiredColor, t),
      multiRowFormBackground:
          Color.lerp(multiRowFormBackground, other.multiRowFormBackground, t),
      multiRowFormRequiredColor: Color.lerp(
          multiRowFormRequiredColor, other.multiRowFormRequiredColor, t),

      // 文本
      appbarTextColor: Color.lerp(appbarTextColor, other.appbarTextColor, t),
      potentialAppbarTextColor: Color.lerp(
          potentialAppbarTextColor, other.potentialAppbarTextColor, t),
      titleColor: Color.lerp(titleColor, other.titleColor, t),
      textColor: Color.lerp(textColor, other.textColor, t),
      subTextColor: Color.lerp(subTextColor, other.subTextColor, t),
      cornerTextColor: Color.lerp(cornerTextColor, other.cornerTextColor, t),
      hintTextColor: Color.lerp(hintTextColor, other.hintTextColor, t),
      highlightTextColor:
          Color.lerp(highlightTextColor, other.highlightTextColor, t),
      warningTextColor: Color.lerp(warningTextColor, other.warningTextColor, t),
      badgeTextColor: Color.lerp(badgeTextColor, other.badgeTextColor, t),
      noMoreContent: Color.lerp(noMoreContent, other.noMoreContent, t),
      hyperlinkColor: Color.lerp(hyperlinkColor, other.hyperlinkColor, t),

      // 图标
      markerColor: Color.lerp(markerColor, other.markerColor, t),
      badgeColor: Color.lerp(badgeColor, other.badgeColor, t),
      loadingColor: Color.lerp(loadingColor, other.loadingColor, t),

      // 组件
      cardBoxBackground:
          Color.lerp(cardBoxBackground, other.cardBoxBackground, t),
      cardBoxShadow: Color.lerp(cardBoxShadow, other.cardBoxShadow, t),
      cardBoxBorderColor:
          Color.lerp(cardBoxBorderColor, other.cardBoxBorderColor, t),
      avatarBackground: Color.lerp(avatarBackground, other.avatarBackground, t),
      radioCheckColor: Color.lerp(radioCheckColor, other.radioCheckColor, t),
      radioSelectedColor:
          Color.lerp(radioSelectedColor, other.radioSelectedColor, t),
      radioDefaultColor:
          Color.lerp(radioDefaultColor, other.radioDefaultColor, t),
      radioButtonSelectedColor: Color.lerp(
          radioButtonSelectedColor, other.radioButtonSelectedColor, t),
      radioButtonUnselectedColor: Color.lerp(
          radioButtonUnselectedColor, other.radioButtonUnselectedColor, t),

      // 按钮
      mainButtonBackground:
          Color.lerp(mainButtonBackground, other.mainButtonBackground, t),
      mainButtonBorderColor:
          Color.lerp(mainButtonBorderColor, other.mainButtonBorderColor, t),
      mainButtonTextColor:
          Color.lerp(mainButtonTextColor, other.mainButtonTextColor, t),
      subButtonBackground:
          Color.lerp(subButtonBackground, other.subButtonBackground, t),
      subButtonBorderColor:
          Color.lerp(subButtonBorderColor, other.subButtonBorderColor, t),
      subButtonTextColor:
          Color.lerp(subButtonTextColor, other.subButtonTextColor, t),
      disabledButtonTextColor:
          Color.lerp(disabledButtonTextColor, other.disabledButtonTextColor, t),
      disabledButtonBackground: Color.lerp(
          disabledButtonBackground, other.disabledButtonBackground, t),

      // 弹窗
      dialogBackground: Color.lerp(dialogBackground, other.dialogBackground, t),
      dialogConfirmButtonBackground: Color.lerp(dialogConfirmButtonBackground,
          other.dialogConfirmButtonBackground, t),
      dialogConfirmButtonTextColor: Color.lerp(
          dialogConfirmButtonTextColor, other.dialogConfirmButtonTextColor, t),
      dialogCancelButtonBackground: Color.lerp(
          dialogCancelButtonBackground, other.dialogCancelButtonBackground, t),
      dialogCancelButtonTextColor: Color.lerp(
          dialogCancelButtonTextColor, other.dialogCancelButtonTextColor, t),

      // 底部弹框
      bottomSheetBackground:
          Color.lerp(bottomSheetBackground, other.bottomSheetBackground, t),
      bottomSheetConfirmTextColor: Color.lerp(
          bottomSheetConfirmTextColor, other.bottomSheetConfirmTextColor, t),
      bottomSheetCancelTextColor: Color.lerp(
          bottomSheetCancelTextColor, other.bottomSheetCancelTextColor, t),

      // 园所
      kindergartenBorderColor:
          Color.lerp(kindergartenBorderColor, other.kindergartenBorderColor, t),
      kindergartenTitleBackground: Color.lerp(
          kindergartenTitleBackground, other.kindergartenTitleBackground, t),
      kindergartenBackground1:
          Color.lerp(kindergartenBackground1, other.kindergartenBackground1, t),
      kindergartenBackground2:
          Color.lerp(kindergartenBackground2, other.kindergartenBackground2, t),
      promotionTitleColor:
          Color.lerp(promotionTitleColor, other.promotionTitleColor, t),
      promotionBackground1:
          Color.lerp(promotionBackground1, other.promotionBackground1, t),
      promotionBackground2:
          Color.lerp(promotionBackground2, other.promotionBackground2, t),
    );
  }
}
