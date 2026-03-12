import 'package:flutter/material.dart';
import 'package:vendora/App/appColor.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    progressIndicatorTheme: progressIndicatorThemeData,
    textTheme: TextTheme(),
    inputDecorationTheme: inputDecorationTheme,
    scaffoldBackgroundColor: Colors.white,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    progressIndicatorTheme: progressIndicatorThemeData,
    textTheme: TextTheme(),
    inputDecorationTheme: inputDecorationTheme
  );


  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: AppColor.themeColor, width: 1.5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: AppColor.themeColor, width: 1.5),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: AppColor.themeColor, width: 1.5),
    ),
  );


  static ProgressIndicatorThemeData progressIndicatorThemeData =
      ProgressIndicatorThemeData(color: AppColor.themeColor);
}
