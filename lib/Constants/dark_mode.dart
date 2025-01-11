import 'package:flutter/material.dart';
import 'package:quran/Constants/app_color.dart';

class DarkTheme {
  static final ThemeData themeData = ThemeData(
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColor.darkscondaryColor,
      // indicatorColor: AppColor.lightscondaryColor,
      labelTextStyle: WidgetStateProperty.all(
        TextStyle(
          color: AppColor.darkthirdColor,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
backgroundColor: AppColor.darkscondaryColor,
      )
    ),
    cardColor: Color(0xFF151c31),
    splashColor: Color(0xFF141A2E),
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: AppColor.darkthirdColor,
        onPrimary: AppColor.darkscondaryColor,
        secondary: AppColor.darkscondaryColor,
        onSecondary: AppColor.darkprimaryColor,
        error: AppColor.darkerrorAndMessage,
        onError: AppColor.darkerrorAndMessage,
        surface: AppColor.darkthirdColor,
        onSurface: AppColor.darkthirdColor),
    scaffoldBackgroundColor: Colors.black,
  );
}
