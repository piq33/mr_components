import 'dart:io';

import 'package:components/resource/colors.gen.dart';
import 'package:components/theme/album_theme.dart';
import 'package:components/theme/attendance_theme.dart';
import 'package:components/theme/bill_theme.dart';
import 'package:components/theme/bosocial_theme.dart';
import 'package:components/theme/childtask_theme.dart';
import 'package:components/theme/conservation_theme.dart';
import 'package:components/theme/date_selector_theme.dart';
import 'package:components/theme/diy_theme.dart';
import 'package:components/theme/download_theme.dart';
import 'package:components/theme/gender_theme.dart';
import 'package:components/theme/login_theme.dart';
import 'package:components/theme/main_theme.dart';
import 'package:components/theme/me_theme.dart';
import 'package:components/theme/media_theme.dart';
import 'package:components/theme/notification_theme.dart';
import 'package:components/theme/recipes_theme.dart';
import 'package:components/theme/relationship_theme.dart';
import 'package:components/theme/school_theme.dart';
import 'package:components/theme/time_theme.dart';
import 'package:components/theme/todo_theme.dart';
import 'package:components/theme/week_plan_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var _mainColor = ColorName.mainColor;
ThemeData lightTheme() {
  final isIOS = Platform.isIOS;
  final splashFactory = isIOS ? NoSplash.splashFactory : null;
  final splashColor = _mainColor.withOpacity(0.1);
  return ThemeData(
    splashFactory: splashFactory,
    splashColor: splashColor,
    scaffoldBackgroundColor: ColorName.scaffoldBackground,
    extensions: const [
      MainTheme.light,
      DateSelectorTheme.light,
      RelationshipTheme.light,
      GenderTheme.light,
      MediaTheme.light,
      LoginTheme.light,
      SchoolTheme.light,
      TimeTheme.light,
      BoSocialTheme.light,
      MeTheme.light,
      WeekPlanTheme.light,
      BillTheme.light,
      TodoTheme.light,
      AlbumTheme.light,
      DiyTheme.light,
      AttendanceTheme.light,
      RecipesTheme.light,
      ConservationTheme.light,
      ChildtaskTheme.light,
      NotificationTheme.light,
      DownloadTheme.light,
    ],
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.transparent,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    cupertinoOverrideTheme: CupertinoThemeData(
      primaryColor: _mainColor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        splashFactory: splashFactory,
        minimumSize: ButtonStyleButton.allOrNull<Size>(Size.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: ButtonStyleButton.allOrNull(EdgeInsets.zero),
        overlayColor: MaterialStateProperty.all(splashColor),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        splashFactory: splashFactory,
        minimumSize: ButtonStyleButton.allOrNull<Size>(Size.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: ButtonStyleButton.allOrNull(EdgeInsets.zero),
        overlayColor: MaterialStateProperty.all(splashColor),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        splashFactory: splashFactory,
        minimumSize: ButtonStyleButton.allOrNull<Size>(Size.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: ButtonStyleButton.allOrNull(EdgeInsets.zero),
        overlayColor: MaterialStateProperty.all(splashColor),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: _mainColor,
      selectionColor: _mainColor.withOpacity(0.5),
      selectionHandleColor: _mainColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF333333),
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w600,
      ),
      unselectedItemColor: Color(0xFF999999),
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w400,
      ),
    ),
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(_mainColor.withOpacity(0.5)),
    ),
  );
}

AnnotatedRegion<SystemUiOverlayStyle> darkStatusBar({
  Color? statusColor,
  required Widget child,
}) {
  return AnnotatedRegion<SystemUiOverlayStyle>(
    value: SystemUiOverlayStyle(
      statusBarColor: statusColor ?? Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    ),
    child: child,
  );
}

SystemUiOverlayStyle darkOverlayStyle([Color? statusColor]) {
  return SystemUiOverlayStyle(
    statusBarColor: statusColor ?? Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
  );
}

AnnotatedRegion<SystemUiOverlayStyle> lightStatusBar({
  Color? statusColor,
  required Widget child,
}) {
  return AnnotatedRegion<SystemUiOverlayStyle>(
    value: SystemUiOverlayStyle(
      statusBarColor: statusColor ?? Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ),
    child: child,
  );
}

SystemUiOverlayStyle lightOverlayStyle([Color? statusColor]) {
  return SystemUiOverlayStyle(
    statusBarColor: statusColor ?? Colors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
  );
}
