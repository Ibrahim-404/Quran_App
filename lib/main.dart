import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/manage/dark_and_light_cubit.dart';
import 'package:quran/routes/routes_settings.dart';
import 'package:quran/view/presenation/splash_screen.dart';

void main() {
  runApp(Quran());
}

class Quran extends StatelessWidget {
  const Quran({super.key, Widgy});
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => DarkAndLightCubit(),
     child:
        MaterialApp(
        theme:context.read<DarkAndLightCubit>().isDark==true? ThemeData.light():ThemeData.dark(),
    onGenerateRoute: RoutesSettings().onGenerateRoute,
home: Quran_SplashScreen(),

    )

    );
  }
}
