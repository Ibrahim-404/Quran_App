import 'package:flutter/material.dart';
import 'package:quran/view/presenation/manage_screen.dart';
import 'package:quran/view/presenation/splash_screen.dart';

class RoutesSettings {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Quran_SplashScreen());
      case '/ManageScreen':
        return MaterialPageRoute(builder: (_) => const ManageScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page Not Found')),
          ),
        );
    }
  }
}
