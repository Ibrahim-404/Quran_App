import 'package:dio/dio.dart';
import 'package:quran/services/models/quran_list%20of%20surah/model_quran_List.dart';

class Fetch_Quran_ListName {
  Dio dio = Dio();
  Future<QuranList?> getQuranListName() async {
    try {
      final response = await dio.get('https://api.alquran.cloud/v1/surah');
      if (response.statusCode == 200) {
        return QuranList.fromJson(response.data);
      } else {
        print("Error: Received status code ${response.statusCode}");
        return null; // Return null if the status code is not 200
      }
    } catch (e) {
      print("Error when fetching Quran list: $e");
      return null; // Return null on error
    }
  }
}
