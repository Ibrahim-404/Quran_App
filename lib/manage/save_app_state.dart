import 'package:shared_preferences/shared_preferences.dart';

class save_app_state {
  String arabicFont = 'AmiriQuran';
  double arabicFontSize = 28;
  double mushafFontSize = 40;
  bool isDark = false;
  Uri quranAppUrl = Uri.parse('https://github.com/Ibrahim-404/Quran_App.git');

  // Instance of SharedPreferences
  Future<SharedPreferences> _preferences() async =>
      await SharedPreferences.getInstance();

  // Save Settings
   Future<void> saveSetting({
    required double arabicFontSize,
    required double mushafFontSize,
    required bool isDark,
  }) async {
    final pref = await _preferences();
    await pref.setDouble('arabicFontSize', arabicFontSize);
    await pref.setDouble('mushafFontSize', mushafFontSize);
    await pref.setBool('isDark', isDark);
  }

  // Load Settings
  Future<void> loadSetting() async {
    try {
      final pref = await _preferences();
      arabicFontSize = pref.getDouble('arabicFontSize') ?? 28;
      mushafFontSize = pref.getDouble('mushafFontSize') ?? 40;
      isDark = pref.getBool('isDark') ?? false;
    } catch (e) {
      print("Error loading settings: $e");
      arabicFontSize = 28;
      mushafFontSize = 40;
      isDark = false;
    }
  }
}
