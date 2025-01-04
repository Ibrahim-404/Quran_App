import 'package:flutter/material.dart';
import 'package:quran/Constants/app_color.dart';

class DarkTheme {
  static final ThemeData themeData = ThemeData(
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
