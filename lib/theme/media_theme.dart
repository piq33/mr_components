import 'package:flutter/material.dart';

class MediaTheme extends ThemeExtension<MediaTheme> {
  final Color? backButtonColor;

  // 进度条
  final Color? mediaControlColor;

  // 视频
  final Color? videoDurationColor;

  // 录音
  final Color? recordButtonTextColor;
  final Color? recordButtonBackground;
  final Color? recordDurationColor;
  final Color? recordBackground1;
  final Color? recordBackground2;

  // 相册
  final Color? galleryIconColor;
  final Color? galleryIndexColor;
  final Color? galleryTotalColor;
  final Color? galleryBackground;
  final Color? galleryBoxShadow;

  const MediaTheme({
    this.backButtonColor,

    // 进度条
    this.mediaControlColor,

    // 视频
    this.videoDurationColor,

    // 录音
    this.recordButtonTextColor,
    this.recordButtonBackground,
    this.recordDurationColor,
    this.recordBackground1,
    this.recordBackground2,

    // 相册
    this.galleryIconColor,
    this.galleryIndexColor,
    this.galleryTotalColor,
    this.galleryBackground,
    this.galleryBoxShadow,
  });

  static const light = MediaTheme(
    backButtonColor: Colors.white,

    // 进度条
    mediaControlColor: Colors.white,

    // 视频
    videoDurationColor: Colors.white,

    // 录音
    recordButtonTextColor: Colors.white,
    recordButtonBackground: Color(0xFFFAFAFA),
    recordDurationColor: Colors.white,
    recordBackground1: Color(0xFF4BDCBD),
    recordBackground2: Color(0xFF3CD098),

    // 相册
    galleryIconColor: Colors.white,
    galleryIndexColor: Colors.white,
    galleryTotalColor: Colors.black,
    galleryBackground: Colors.black,
    galleryBoxShadow: Colors.black,
  );
  static const dark = light;

  @override
  ThemeExtension<MediaTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<MediaTheme> lerp(ThemeExtension<MediaTheme>? other, double t) {
    if (other is! MediaTheme) {
      return this;
    }
    return MediaTheme(
      backButtonColor: Color.lerp(backButtonColor, other.backButtonColor, t),

      // 进度条
      mediaControlColor:
          Color.lerp(mediaControlColor, other.mediaControlColor, t),

      // 视频
      videoDurationColor:
          Color.lerp(videoDurationColor, other.videoDurationColor, t),

      // 录音
      recordButtonTextColor:
          Color.lerp(recordButtonTextColor, other.recordButtonTextColor, t),
      recordButtonBackground:
          Color.lerp(recordButtonBackground, other.recordButtonBackground, t),
      recordDurationColor:
          Color.lerp(recordDurationColor, other.recordDurationColor, t),
      recordBackground1:
          Color.lerp(recordBackground1, other.recordBackground1, t),
      recordBackground2:
          Color.lerp(recordBackground2, other.recordBackground2, t),

      // 相册
      galleryIconColor: Color.lerp(galleryIconColor, other.galleryIconColor, t),
      galleryIndexColor:
          Color.lerp(galleryIndexColor, other.galleryIndexColor, t),
      galleryTotalColor:
          Color.lerp(galleryTotalColor, other.galleryTotalColor, t),
      galleryBackground:
          Color.lerp(galleryBackground, other.galleryBackground, t),
      galleryBoxShadow: Color.lerp(galleryBoxShadow, other.galleryBoxShadow, t),
    );
  }
}
