import 'package:flutter/material.dart';

class TodoTheme extends ThemeExtension<TodoTheme> {
  final Color? todoNotificationBackground;
  final Color? todoNotificationBoxShadow;

  const TodoTheme({
    this.todoNotificationBackground,
    this.todoNotificationBoxShadow,
  });

  static const light = TodoTheme(
    todoNotificationBackground: Colors.white,
    todoNotificationBoxShadow: Color(0x0A052843),
  );
  static const dark = light;

  @override
  ThemeExtension<TodoTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<TodoTheme> lerp(ThemeExtension<TodoTheme>? other, double t) {
    if (other is! TodoTheme) {
      return this;
    }
    return TodoTheme(
      todoNotificationBackground: Color.lerp(
          todoNotificationBackground, other.todoNotificationBackground, t),
      todoNotificationBoxShadow: Color.lerp(
          todoNotificationBoxShadow, other.todoNotificationBoxShadow, t),
    );
  }
}
