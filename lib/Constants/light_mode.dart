import 'package:flutter/material.dart';
import 'package:quran/Constants/app_color.dart';

class LightTheme {
  static final ThemeData LightthemeData = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary:AppColor.LightprimaryColor,
        onPrimary: AppColor.LightprimaryColor,
        secondary: AppColor.lightscondaryColor,
        onSecondary: AppColor.lightscondaryColor,
        error: AppColor.lighterrorAndMessage,
        onError: AppColor.lighterrorAndMessage,
        surface: AppColor.lightthirdColor,
        onSurface: AppColor.lightthirdColor
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}
