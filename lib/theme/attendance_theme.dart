import 'package:flutter/material.dart';

class AttendanceTheme extends ThemeExtension<AttendanceTheme> {
  final Color? cardBackground;
  final Color? sectionTitleColor;

  // 日历
  final Color? weekdayTextColor;
  final Color? todayBackground;
  final Color? todayTextColor;
  final Color? todayMarkerColor;
  final Color? workdayTextColor;
  final Color? workdayMarkerColor;
  final Color? weekendTextColor;
  final Color? weekendMarkerBackground;
  final Color? weekendMarkerTextColor;

  // 考勤状态
  final Color? approvalTextColor;
  final Color? approvalBackground;
  final Color? verifyingTextColor;
  final Color? verifyingBackground;
  final Color? toBeConfirmTextColor;
  final Color? toBeConfirmBackground;

  // 考勤分类
  final Color? attendanceBackground;
  final Color? attendanceTextColor;
  final Color? absenceBackground;
  final Color? absenceTextColor;
  final Color? leaveBackground;
  final Color? leaveTextColor;

  // 饼图
  final Color? progressBackground;
  final Color? attendanceNormalColor;
  final Color? attendanceAbnormalColor;
  final Color? chartNormalStartColor;
  final Color? chartNormalEndColor;
  final Color? chartAbnormalStartColor;
  final Color? chartAbnormalEndColor;

  // 请假申请历史
  final Color? leaveCancelButtonTextColor;
  final Color? leaveCancelButtonBackground;
  final Color? leaveCanceledButtonTextColor;
  final Color? leaveCanceledButtonBackground;
  final Color? leaveDurationTextColor;

  // 签名
  final Color? signatureViewBorderColor;
  final Color? signatureViewBackground;

  // 考勤反馈
  final Color? feedbackTextfieldBackground;

  const AttendanceTheme({
    this.cardBackground,
    this.sectionTitleColor,

    // 日历
    this.weekdayTextColor,
    this.todayBackground,
    this.todayTextColor,
    this.todayMarkerColor,
    this.workdayTextColor,
    this.workdayMarkerColor,
    this.weekendTextColor,
    this.weekendMarkerBackground,
    this.weekendMarkerTextColor,

    // 考勤状态
    this.approvalTextColor,
    this.approvalBackground,
    this.verifyingTextColor,
    this.verifyingBackground,
    this.toBeConfirmTextColor,
    this.toBeConfirmBackground,

    // 考勤分类
    this.attendanceBackground,
    this.attendanceTextColor,
    this.absenceBackground,
    this.absenceTextColor,
    this.leaveBackground,
    this.leaveTextColor,

    // 饼图
    this.progressBackground,
    this.attendanceNormalColor,
    this.attendanceAbnormalColor,
    this.chartNormalStartColor,
    this.chartNormalEndColor,
    this.chartAbnormalStartColor,
    this.chartAbnormalEndColor,

    // 请假申请历史
    this.leaveCancelButtonTextColor,
    this.leaveCancelButtonBackground,
    this.leaveCanceledButtonTextColor,
    this.leaveCanceledButtonBackground,
    this.leaveDurationTextColor,

    // 签名
    this.signatureViewBorderColor,
    this.signatureViewBackground,

    // 考勤反馈
    this.feedbackTextfieldBackground,
  });

  static const light = AttendanceTheme(
    cardBackground: Colors.white,
    sectionTitleColor: Color(0xFF009DFF),

    // 日历
    weekdayTextColor: Color(0xFF999999),
    todayTextColor: Color(0xFF009DFF),
    todayBackground: Color(0xFFE7F8FF),
    todayMarkerColor: Color(0xFF009DFF),
    weekendTextColor: Color(0xFFBBBBBB),
    weekendMarkerBackground: Color(0xFFFAFAFA),
    weekendMarkerTextColor: Color(0xFF999999),
    workdayTextColor: Color(0xFF333333),
    workdayMarkerColor: Color(0xFFD8D8D8),

    // 考勤状态
    approvalTextColor: Color(0xFF40CB72),
    approvalBackground: Color(0x1A40CB72),
    verifyingTextColor: Color(0xFFFB3B54),
    verifyingBackground: Color(0x1AFB3B54),
    toBeConfirmTextColor: Color(0xFFFF8818),
    toBeConfirmBackground: Color(0x1AFF8818),

    // 考勤分类
    attendanceBackground: Color(0xFFDCFFFA),
    attendanceTextColor: Color(0xFF35C4B0),
    absenceBackground: Color(0xFFFFE5E9),
    absenceTextColor: Color(0xFFFB3B54),
    leaveBackground: Color(0xFFFFF1E3),
    leaveTextColor: Color(0xFFFF8818),

    // 饼图
    progressBackground: Color(0xFFF8F9FA),
    attendanceNormalColor: Color(0xFF6474F1),
    attendanceAbnormalColor: Color(0xFFF85C00),
    chartNormalStartColor: Color(0x80AAB7FA),
    chartNormalEndColor: Color(0xFF7180F4),
    chartAbnormalStartColor: Color(0x80FFBA4E),
    chartAbnormalEndColor: Color(0xFFFC7916),

    // 请假申请历史
    leaveCancelButtonTextColor: Color(0xFF333333),
    leaveCancelButtonBackground: Color(0xFFEBF2FA),
    leaveCanceledButtonTextColor: Color(0xFFBECDDD),
    leaveCanceledButtonBackground: Color(0xFFEBF2FA),
    leaveDurationTextColor: Color(0xFFFFB247),

    // 签名
    signatureViewBorderColor: Color(0xFFEAEFF4),
    signatureViewBackground: Colors.white,

    // 考勤反馈
    feedbackTextfieldBackground: Color(0xFFF7FAFC),
  );
  static const dark = light;

  @override
  ThemeExtension<AttendanceTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<AttendanceTheme> lerp(
      ThemeExtension<AttendanceTheme>? other, double t) {
    if (other is! AttendanceTheme) {
      return this;
    }
    return AttendanceTheme(
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t),
      sectionTitleColor:
          Color.lerp(sectionTitleColor, other.sectionTitleColor, t),

      // 日历
      weekdayTextColor: Color.lerp(weekdayTextColor, other.weekdayTextColor, t),
      todayTextColor: Color.lerp(todayTextColor, other.todayTextColor, t),
      todayBackground: Color.lerp(todayBackground, other.todayBackground, t),
      todayMarkerColor: Color.lerp(todayMarkerColor, other.todayMarkerColor, t),
      weekendTextColor: Color.lerp(weekendTextColor, other.weekendTextColor, t),
      weekendMarkerBackground:
          Color.lerp(weekendMarkerBackground, other.weekendMarkerBackground, t),
      weekendMarkerTextColor:
          Color.lerp(weekendMarkerTextColor, other.weekendMarkerTextColor, t),
      workdayTextColor: Color.lerp(workdayTextColor, other.workdayTextColor, t),
      workdayMarkerColor:
          Color.lerp(workdayMarkerColor, other.workdayMarkerColor, t),

      // 考勤状态
      approvalTextColor:
          Color.lerp(approvalTextColor, other.approvalTextColor, t),
      approvalBackground:
          Color.lerp(approvalBackground, other.approvalBackground, t),
      verifyingTextColor:
          Color.lerp(verifyingTextColor, other.verifyingTextColor, t),
      verifyingBackground:
          Color.lerp(verifyingBackground, other.verifyingBackground, t),
      toBeConfirmTextColor:
          Color.lerp(toBeConfirmTextColor, other.toBeConfirmTextColor, t),
      toBeConfirmBackground:
          Color.lerp(toBeConfirmBackground, other.toBeConfirmBackground, t),

      // 考勤分类
      attendanceBackground:
          Color.lerp(attendanceBackground, other.attendanceBackground, t),
      attendanceTextColor:
          Color.lerp(attendanceTextColor, other.attendanceTextColor, t),
      absenceBackground:
          Color.lerp(absenceBackground, other.absenceBackground, t),
      absenceTextColor: Color.lerp(absenceTextColor, other.absenceTextColor, t),
      leaveBackground: Color.lerp(leaveBackground, other.leaveBackground, t),
      leaveTextColor: Color.lerp(leaveTextColor, other.leaveTextColor, t),

      // 饼图
      progressBackground:
          Color.lerp(progressBackground, other.progressBackground, t),
      attendanceNormalColor:
          Color.lerp(attendanceNormalColor, other.attendanceNormalColor, t),
      attendanceAbnormalColor:
          Color.lerp(attendanceAbnormalColor, other.attendanceAbnormalColor, t),
      chartNormalStartColor:
          Color.lerp(chartNormalStartColor, other.chartNormalStartColor, t),
      chartNormalEndColor:
          Color.lerp(chartNormalEndColor, other.chartNormalEndColor, t),
      chartAbnormalStartColor:
          Color.lerp(chartAbnormalStartColor, other.chartAbnormalStartColor, t),
      chartAbnormalEndColor:
          Color.lerp(chartAbnormalEndColor, other.chartAbnormalEndColor, t),

      // 请假申请历史
      leaveCancelButtonTextColor: Color.lerp(
          leaveCancelButtonTextColor, other.leaveCancelButtonTextColor, t),
      leaveCancelButtonBackground: Color.lerp(
          leaveCancelButtonBackground, other.leaveCancelButtonBackground, t),
      leaveCanceledButtonTextColor: Color.lerp(
          leaveCanceledButtonTextColor, other.leaveCanceledButtonTextColor, t),
      leaveCanceledButtonBackground: Color.lerp(leaveCanceledButtonBackground,
          other.leaveCanceledButtonBackground, t),
      leaveDurationTextColor:
          Color.lerp(leaveDurationTextColor, other.leaveDurationTextColor, t),

      // 签名
      signatureViewBorderColor: Color.lerp(
          signatureViewBorderColor, other.signatureViewBorderColor, t),
      signatureViewBackground:
          Color.lerp(signatureViewBackground, other.signatureViewBackground, t),

      // 考勤反馈
      feedbackTextfieldBackground: Color.lerp(
          feedbackTextfieldBackground, other.feedbackTextfieldBackground, t),
    );
  }
}
