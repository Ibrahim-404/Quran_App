import 'package:quran/Constants/dark_mode.dart';
import 'package:quran/Constants/light_mode.dart';

abstract class DarkAndLightState {}
final class DarkAndLightInitial extends DarkAndLightState {}
final class DarkModeState extends DarkAndLightState {
  late DarkTheme darkTheme;
  DarkModeState({required darkTheme});
}
final class LightModeState extends DarkAndLightState {
  late LightTheme lightTheme;
  LightModeState({required lightTheme});
}
