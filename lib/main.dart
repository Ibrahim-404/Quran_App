import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/Constants/dark_mode.dart';
import 'package:quran/Constants/light_mode.dart';

import 'package:quran/manage/dark_and_light_cubit.dart';
import 'package:quran/manage/dark_and_light_state.dart';
import 'package:quran/routes/routes_settings.dart';
import 'package:quran/view/presenation/splash_screen.dart';

void main() async {
  runApp(
    BlocProvider(
      create: (context) => DarkAndLightCubit()..initialize(),
      child: const Quran(),
    ),
  );
}

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DarkAndLightCubit, DarkAndLightState>(
      builder: (context, state) {
        ThemeData themeData;

        // Determine the theme based on the current state
        if (state is DarkModeState) {
          themeData = DarkTheme.themeData; // Use dark theme
        } else {
          themeData = LightTheme.LightthemeData; // Use light theme
        }

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeData, // Set the theme here
          onGenerateRoute: RoutesSettings().onGenerateRoute,
          home: const Quran_SplashScreen(),
        );
      },
    );
  }
}