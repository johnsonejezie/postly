import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xff00AAAA);
  static const accent = Color(0xffFFCB5E);
  static const grey = Color(0xff6D7890);
  static const greyDark = Color(0xff303F4C);
  static const error = Color(0xffFF5E5E);
  static const success = Color(0xff35CF4E);
  static const background = Color(0xffFFF9F2);
  static const fontColor = Colors.black;
}

final ThemeData appThemeLight = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: const Color(0xffffffff),
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    primaryColorBrightness: Brightness.dark,
    accentColor: AppColors.accent,
    accentColorBrightness: Brightness.dark,
    bottomAppBarColor: const Color(0xffffffff),
    cardColor: const Color(0xffffffff),
    dividerColor: AppColors.grey,
    highlightColor: AppColors.accent,
    splashColor: AppColors.accent,
    disabledColor: AppColors.grey,
    textSelectionColor: AppColors.accent,
    textSelectionHandleColor: AppColors.primaryColor,
    backgroundColor: AppColors.background,
    dialogBackgroundColor: AppColors.background,
    indicatorColor: AppColors.primaryColor,
    hintColor: AppColors.accent,
    errorColor: AppColors.error,
    textTheme: const TextTheme(
      headline5: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    ));
