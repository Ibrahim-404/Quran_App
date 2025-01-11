import 'package:flutter/material.dart';
import 'package:quran/Constants/app_color.dart';

class LightTheme {
  static final ThemeData LightthemeData = ThemeData(
    textTheme: TextTheme(),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColor.lightscondaryColor,
      // indicatorColor: AppColor.lightscondaryColor,
      labelTextStyle: WidgetStateProperty.all(
        TextStyle(
          color: AppColor.LightprimaryColor,
        ),
      ),
    ),
    cardColor:Color(0xFFc9b496),
    textButtonTheme:TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        backgroundColor: AppColor.lightscondaryColor,
      )
    ) ,
    brightness: Brightness.light,
    splashColor: Color(0xFFdcdada),
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColor.LightprimaryColor,
        onPrimary: AppColor.LightprimaryColor,
        secondary: AppColor.lightscondaryColor,
        onSecondary: AppColor.lightscondaryColor,
        error: AppColor.lighterrorAndMessage,
        onError: AppColor.lighterrorAndMessage,
        surface: AppColor.lightthirdColor,
        onSurface: AppColor.lightthirdColor),
    // scaffoldBackgroundColor: Colors.white,
  );
}
