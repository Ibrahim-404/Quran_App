import 'package:flutter/material.dart';
import 'package:quran/Constants/app_color.dart';

class LightTheme {
  static final ThemeData LightthemeData = ThemeData(
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColor.lightscondaryColor,
      // indicatorColor: AppColor.lightscondaryColor,
      labelTextStyle: WidgetStateProperty.all(TextStyle(
       color: AppColor.LightprimaryColor,
      ))
    ),
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
    // scaffoldBackgroundColor: Colors.white,
  );
}
