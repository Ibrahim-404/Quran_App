import 'package:shared_preferences/shared_preferences.dart';

class Constant {
  static String arabic_Font = 'AmiriQuran';
  static double arabic_font_size = 28;
  static double musahf_font_size = 40;
  Uri quran_app_url = Uri.parse('https://github.com/Ibrahim-404/Quran_App.git');
  Future<SharedPreferences> _preferences() async =>
      await SharedPreferences.getInstance();
  Future<void> saveSetting() async {
    final pref = await _preferences();
    await pref.setInt('arabic_font_size', arabic_font_size.toInt());
    await pref.setInt('musahf_size', musahf_font_size.toInt());
  }

  Future getSetting() async {
    try {
      final pref = await _preferences();
      final arabicFontSize = pref.getInt('arabic_font_size')!.toDouble();
      final musahfFontSize = pref.getInt('musahf_size')!.toDouble();
    } catch (e) {
      print("error in constant :shared preferences $e");
      arabic_font_size = 28;
      musahf_font_size = 40;
    }
  }
}
