import 'package:flutter/material.dart';

class BillTheme extends ThemeExtension<BillTheme> {
  final Color? tabBarBackground;

  // 账单
  final Color? statusTextColor;
  final Color? statusCompletedBackground;
  final Color? statusToBePaidBackground;

  // 账单详情
  final Color? detailInfoTextColor;
  final Color? detailCardBoxShadow1;
  final Color? detailCardBoxShadow2;
  final Color? detailAmountTextColor;
  final Color? detailBodyBoxShadow1;

  // 支付流程
  final Color? markerColor;
  final Color? selectedPaymentColor;
  final Color? unselectedPaymentColor;
  final Color? paymentBackground;
  final Color? paymentBoxShadow;

  // 支付结果
  final Color? resultBackground;
  final Color? statusSuccessColor;
  final Color? statusCloseColor;
  final Color? statusErrorColor;
  final Color? statusNormalColor;

  const BillTheme({
    this.tabBarBackground,

    // 账单
    this.statusTextColor,
    this.statusCompletedBackground,
    this.statusToBePaidBackground,

    // 账单详情
    this.detailInfoTextColor,
    this.detailCardBoxShadow1,
    this.detailCardBoxShadow2,
    this.detailAmountTextColor,
    this.detailBodyBoxShadow1,

    // 支付流程
    this.markerColor,
    this.selectedPaymentColor,
    this.unselectedPaymentColor,
    this.paymentBackground,
    this.paymentBoxShadow,

    // 支付结果
    this.resultBackground,
    this.statusSuccessColor,
    this.statusCloseColor,
    this.statusErrorColor,
    this.statusNormalColor,
  });

  static const light = BillTheme(
    tabBarBackground: Colors.white,

    // 账单
    statusTextColor: Colors.white,
    statusCompletedBackground: Color(0xFF40CB72),
    statusToBePaidBackground: Color(0xFFFFB247),

    // 账单详情
    detailInfoTextColor: Color(0xFFD19B00),
    detailCardBoxShadow1: Color(0x0A250D02),
    detailCardBoxShadow2: Color(0xFFFFED3D),
    detailAmountTextColor: Color(0xFFFFB247),
    detailBodyBoxShadow1: Color(0x1A9E7F00),

    // 支付流程
    markerColor: Color(0xFFFFDF7F),
    selectedPaymentColor: Color(0xFFFFDF7F),
    unselectedPaymentColor: Color(0xFFEEEEEE),
    paymentBackground: Colors.white,
    paymentBoxShadow: Color(0x0A052843),

    // 支付结果
    resultBackground: Colors.white,
    statusSuccessColor: Color(0xFF40CB72),
    statusCloseColor: Color(0xFFFFB247),
    statusErrorColor: Color(0xFFFB3B54),
    statusNormalColor: Color(0xFF999999),
  );
  static const dark = light;

  @override
  ThemeExtension<BillTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<BillTheme> lerp(ThemeExtension<BillTheme>? other, double t) {
    if (other is! BillTheme) {
      return this;
    }
    return BillTheme(
      tabBarBackground: Color.lerp(tabBarBackground, other.tabBarBackground, t),

      // 账单
      statusTextColor: Color.lerp(statusTextColor, other.statusTextColor, t),
      statusCompletedBackground: Color.lerp(
          statusCompletedBackground, other.statusCompletedBackground, t),
      statusToBePaidBackground: Color.lerp(
          statusToBePaidBackground, other.statusToBePaidBackground, t),

      // 账单详情
      detailInfoTextColor:
          Color.lerp(detailInfoTextColor, other.detailInfoTextColor, t),
      detailCardBoxShadow1:
          Color.lerp(detailCardBoxShadow1, other.detailCardBoxShadow1, t),
      detailCardBoxShadow2:
          Color.lerp(detailCardBoxShadow2, other.detailCardBoxShadow2, t),
      detailAmountTextColor:
          Color.lerp(detailAmountTextColor, other.detailAmountTextColor, t),
      detailBodyBoxShadow1:
          Color.lerp(detailBodyBoxShadow1, other.detailBodyBoxShadow1, t),

      // 支付流程
      markerColor: Color.lerp(markerColor, other.markerColor, t),
      selectedPaymentColor:
          Color.lerp(selectedPaymentColor, other.selectedPaymentColor, t),
      unselectedPaymentColor:
          Color.lerp(unselectedPaymentColor, other.unselectedPaymentColor, t),
      paymentBackground:
          Color.lerp(paymentBackground, other.paymentBackground, t),
      paymentBoxShadow: Color.lerp(paymentBoxShadow, other.paymentBoxShadow, t),

      // 支付结果
      resultBackground: Color.lerp(resultBackground, other.resultBackground, t),
      statusSuccessColor:
          Color.lerp(statusSuccessColor, other.statusSuccessColor, t),
      statusCloseColor: Color.lerp(statusCloseColor, other.statusCloseColor, t),
      statusErrorColor: Color.lerp(statusErrorColor, other.statusErrorColor, t),
      statusNormalColor:
          Color.lerp(statusNormalColor, other.statusNormalColor, t),
    );
  }
}
