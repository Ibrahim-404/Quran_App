import 'package:flutter/material.dart';
import 'package:quran/Constants/app_color.dart';

class DarkTheme {
  static final ThemeData themeData = ThemeData(
    navigationBarTheme: NavigationBarThemeData(
        backgroundColor: AppColor.darkscondaryColor,
        // indicatorColor: AppColor.lightscondaryColor,
        labelTextStyle: WidgetStateProperty.all(
          TextStyle(
            color: AppColor.darkprimaryColor,
          ),
        )),
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: AppColor.darkprimaryColor,
        onPrimary: AppColor.darkprimaryColor,
        secondary: AppColor.darkscondaryColor,
        onSecondary: AppColor.darkscondaryColor,
        error: AppColor.darkerrorAndMessage,
        onError: AppColor.darkerrorAndMessage,
        surface: AppColor.darkthirdColor,
        onSurface: AppColor.darkthirdColor),
    scaffoldBackgroundColor: Colors.black,
  );
}
