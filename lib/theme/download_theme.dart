import 'package:flutter/material.dart';

class DownloadTheme extends ThemeExtension<DownloadTheme> {
  final Color? backButtonColor;
  final Color? textColor;
  final Color? button1TextColor;
  final Color? button2TextColor;

  const DownloadTheme({
    this.backButtonColor,
    this.textColor,
    this.button1TextColor,
    this.button2TextColor,
  });

  static const light = DownloadTheme(
    backButtonColor: Colors.black,
    textColor: Color(0xFF67420F),
    button1TextColor: Color(0xFF67420F),
    button2TextColor: Colors.white,
  );
  static const dark = light;

  @override
  ThemeExtension<DownloadTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<DownloadTheme> lerp(
      ThemeExtension<DownloadTheme>? other, double t) {
    if (other is! DownloadTheme) {
      return this;
    }
    return DownloadTheme(
      backButtonColor: Color.lerp(backButtonColor, other.backButtonColor, t),
      textColor: Color.lerp(textColor, other.textColor, t),
      button1TextColor: Color.lerp(button1TextColor, other.button1TextColor, t),
      button2TextColor: Color.lerp(button2TextColor, other.button2TextColor, t),
    );
  }
}
