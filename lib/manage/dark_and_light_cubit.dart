import 'package:bloc/bloc.dart';
import 'package:quran/Constants/save_app_state.dart';
import 'package:quran/Constants/dark_mode.dart';
import 'package:quran/Constants/light_mode.dart';
import 'package:quran/manage/dark_and_light_state.dart';

class DarkAndLightCubit extends Cubit<DarkAndLightState> {
  DarkAndLightCubit() : super(DarkAndLightInitial());

   bool isDark=false;
  DarkTheme darkTheme = DarkTheme();
  LightTheme lightTheme = LightTheme();
  final save_app_state constant = save_app_state();

  // Initialize the cubit with saved settings
  Future<void> initialize() async {
    await constant.loadSetting();
    isDark = constant.isDark;
    if (isDark) {
      emit(DarkModeState(darkTheme: darkTheme));
    } else {
      emit(LightModeState(lightTheme: lightTheme));
    }
  }
  // Toggle Theme
  Future<void> changeTheme() async {
    isDark = !isDark;
    // Save the new theme state
    await constant.saveSetting(
      arabicFontSize: constant.arabicFontSize,
      mushafFontSize: constant.mushafFontSize,
      isDark: isDark,
    );
    // Emit the corresponding state
    if (isDark) {
      emit(DarkModeState(darkTheme: darkTheme));
    } else {
      emit(LightModeState(lightTheme: lightTheme));
    }
  }
}
