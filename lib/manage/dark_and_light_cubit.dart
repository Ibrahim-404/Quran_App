import 'package:bloc/bloc.dart';
import 'package:quran/Constants/dark_mode.dart';
import 'package:quran/Constants/light_mode.dart';
import 'package:quran/manage/dark_and_light_state.dart';
class DarkAndLightCubit extends Cubit<DarkAndLightState> {
  DarkAndLightCubit() : super(DarkAndLightInitial());
  bool isDark = false;
  DarkTheme darkTheme = DarkTheme();
  LightTheme lightTheme = LightTheme();
  void changeTheme() {
    isDark = !isDark;
    if (isDark == true) {
      emit(DarkModeState(darkTheme: darkTheme));
    } else {
      emit(LightModeState(lightTheme: lightTheme));
    }
  }
}
