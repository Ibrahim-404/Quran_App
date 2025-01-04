import 'package:dio/dio.dart';

class Fetch_Quran_ListName {
  Dio dio = Dio();
  Future getQuranListName() async {
    try {
      final response = await dio.get('https://api.alquran.cloud/v1/surah');
      if (response.statusCode == 200) {
        return response.data;
      }
    } on Exception catch (e) {
      // TODO
      print("erro when fetch quran list $e");
    }
  }
}
