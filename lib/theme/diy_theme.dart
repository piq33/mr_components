import 'package:flutter/material.dart';

class DiyTheme extends ThemeExtension<DiyTheme> {
  final Color? selectButtonTextColor;
  final Color? selectButtonBackground;
  final Color? unselectButtonTextColor;
  final Color? unselectButtonBackground;
  final Color? templateTitleColor;
  final Color? templateSelectedBorderColor;
  final Color? templateUnselectedBorderColor;
  final Color? templatePageThumbColor;
  final Color? templatePageThumbBorderColor;
  final Color? templatePageBarBackground;

  // 选择音乐
  final Color? musicControlIconColor;
  final Color? musicUsingBackground;

  // 制作历史
  final Color? editableIconColor;
  final Color? dropdownBackground;
  final Color? priceColor;
  final Color? printBackground;
  final Color? printTextColor;

  // 打印记录
  final Color? notPaidTextColor;
  final Color? notPaidBackground;
  final Color? shippedTextColor;
  final Color? shippedBackground;
  final Color? waitingTextColor;
  final Color? waitingBackground;

  // 支付详情
  final Color? infoBackground;
  final Color? contractBorderColor;
  final Color? contractCheckColor;
  final Color? expandTextColor;
  final Color? deliveryTextColor;

  // 制作相册
  final Color? diyCompleteTitleColor;

  const DiyTheme({
    this.selectButtonTextColor,
    this.selectButtonBackground,
    this.unselectButtonTextColor,
    this.unselectButtonBackground,
    this.templateTitleColor,
    this.templateSelectedBorderColor,
    this.templateUnselectedBorderColor,
    this.templatePageThumbColor,
    this.templatePageThumbBorderColor,
    this.templatePageBarBackground,

    // 选择音乐
    this.musicControlIconColor,
    this.musicUsingBackground,

    // 制作历史
    this.editableIconColor,
    this.dropdownBackground,
    this.priceColor,
    this.printBackground,
    this.printTextColor,

    // 打印记录
    this.notPaidTextColor,
    this.notPaidBackground,
    this.shippedTextColor,
    this.shippedBackground,
    this.waitingTextColor,
    this.waitingBackground,

    // 支付详情
    this.infoBackground,
    this.contractBorderColor,
    this.contractCheckColor,
    this.expandTextColor,
    this.deliveryTextColor,

    // 制作相册
    this.diyCompleteTitleColor,
  });

  static const light = DiyTheme(
    selectButtonTextColor: Color(0xFF7C560E),
    selectButtonBackground: Color(0xFFFFDF7F),
    unselectButtonTextColor: Color(0xFF666666),
    unselectButtonBackground: Color(0xFFD6D6D6),
    templateTitleColor: Color(0xFF009DFF),
    templateSelectedBorderColor: Color(0xFF009DFF),
    templateUnselectedBorderColor: Color(0xFFCECECE),
    templatePageThumbColor: Color(0xFFFFDF7F),
    templatePageThumbBorderColor: Colors.white,
    templatePageBarBackground: Color(0xFFFFFFFF),

    // 选择音乐
    musicControlIconColor: Color(0xFF999999),
    musicUsingBackground: Color(0x42D9D9D9),

    // 制作历史
    editableIconColor: Color(0xFFDBDBDB),
    dropdownBackground: Colors.white,
    priceColor: Color(0xFF009DFF),
    printBackground: Color(0xFFFFDF7F),
    printTextColor: Color(0xFFA36911),

    // 打印记录
    notPaidTextColor: Color(0xFF009DFF),
    notPaidBackground: Color(0xFFE1F5FF),
    shippedTextColor: Color(0xFF72BE1D),
    shippedBackground: Color(0x1972BE1D),
    waitingTextColor: Color(0xFFF49B15),
    waitingBackground: Color(0xFFFFF0DF),

    // 支付详情
    infoBackground: Color(0xFFF5F5F5),
    contractBorderColor: Color(0xFF009DFF),
    contractCheckColor: Colors.white,
    expandTextColor: Color(0xFF386FFC),
    deliveryTextColor: Color(0xFF376FFB),

    // 制作相册
    diyCompleteTitleColor: Color(0xFF009DFF),
  );
  static const dark = light;

  @override
  ThemeExtension<DiyTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<DiyTheme> lerp(ThemeExtension<DiyTheme>? other, double t) {
    if (other is! DiyTheme) {
      return this;
    }
    return DiyTheme(
      selectButtonTextColor:
          Color.lerp(selectButtonTextColor, other.selectButtonTextColor, t),
      selectButtonBackground:
          Color.lerp(selectButtonBackground, other.selectButtonBackground, t),
      unselectButtonTextColor:
          Color.lerp(unselectButtonTextColor, other.unselectButtonTextColor, t),
      unselectButtonBackground: Color.lerp(
          unselectButtonBackground, other.unselectButtonBackground, t),
      templateTitleColor:
          Color.lerp(templateTitleColor, other.templateTitleColor, t),
      templateSelectedBorderColor: Color.lerp(
          templateSelectedBorderColor, other.templateSelectedBorderColor, t),
      templateUnselectedBorderColor: Color.lerp(templateUnselectedBorderColor,
          other.templateUnselectedBorderColor, t),
      templatePageThumbColor:
          Color.lerp(templatePageThumbColor, other.templatePageThumbColor, t),
      templatePageThumbBorderColor: Color.lerp(
          templatePageThumbBorderColor, other.templatePageThumbBorderColor, t),
      templatePageBarBackground: Color.lerp(
          templatePageBarBackground, other.templatePageBarBackground, t),

      // 选择音乐
      musicControlIconColor:
          Color.lerp(musicControlIconColor, other.musicControlIconColor, t),
      musicUsingBackground:
          Color.lerp(musicUsingBackground, other.musicUsingBackground, t),

      // 制作历史
      editableIconColor:
          Color.lerp(editableIconColor, other.editableIconColor, t),
      dropdownBackground:
          Color.lerp(dropdownBackground, other.dropdownBackground, t),
      priceColor: Color.lerp(priceColor, other.priceColor, t),
      printBackground: Color.lerp(printBackground, other.printBackground, t),
      printTextColor: Color.lerp(printTextColor, other.printTextColor, t),

      // 打印记录
      notPaidTextColor: Color.lerp(notPaidTextColor, other.notPaidTextColor, t),
      notPaidBackground:
          Color.lerp(notPaidBackground, other.notPaidBackground, t),
      shippedTextColor: Color.lerp(shippedTextColor, other.shippedTextColor, t),
      shippedBackground:
          Color.lerp(shippedBackground, other.shippedBackground, t),
      waitingTextColor: Color.lerp(waitingTextColor, other.waitingTextColor, t),
      waitingBackground:
          Color.lerp(waitingBackground, other.waitingBackground, t),

      // 支付详情
      infoBackground: Color.lerp(infoBackground, other.infoBackground, t),
      contractBorderColor:
          Color.lerp(contractBorderColor, other.contractBorderColor, t),
      contractCheckColor:
          Color.lerp(contractCheckColor, other.contractCheckColor, t),
      expandTextColor: Color.lerp(expandTextColor, other.expandTextColor, t),
      deliveryTextColor:
          Color.lerp(deliveryTextColor, other.deliveryTextColor, t),

      // 制作相册
      diyCompleteTitleColor:
          Color.lerp(diyCompleteTitleColor, other.diyCompleteTitleColor, t),
    );
  }
}
