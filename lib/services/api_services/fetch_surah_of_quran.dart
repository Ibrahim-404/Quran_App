import 'package:dio/dio.dart';

import '../models/surah of quran/surah of quran.dart';
class FetchSurahOfQuran{
int surahNumber=1;
FetchSurahOfQuran({required this.surahNumber} );
  Dio dio = Dio();
  Future<SuraInQuran?>surahOfQuran()async{
   try {
     final response = await dio.get('https://api.alquran.cloud/v1/surah/$surahNumber/ar.alafasy');
     if(response.statusCode==200) {
       return SuraInQuran.fromJson(response.data);
print(SuraInQuran.fromJson(response.data));
     }else{
       print("Error: Received status code ${response.statusCode}");
       return null;
     }
   } on Exception catch (e) {
     print(e);
   }
  }

}