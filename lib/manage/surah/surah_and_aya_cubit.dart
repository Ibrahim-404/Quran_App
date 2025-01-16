import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran/services/api_services/fetch_surah_of_quran.dart';
import 'package:quran/services/models/surah%20of%20quran/surah%20of%20quran.dart';

part 'surah_and_aya_state.dart';

class SurahAndAyaCubit extends Cubit<SurahAndAyaState> {
  SurahAndAyaCubit() : super(SurahAndAyaInitial());
  int surahNumber = 1;
  Future<void> changeSurahAndAya()async {
    emit(SurahAndAyaLoading());
    final response =await FetchSurahOfQuran(surahNumber: surahNumber).surahOfQuran();
    if (response != null) {
      emit(SurahAndAyaLoadedSccess(surah: response));
    } else {
      emit(SurahAndAyaLoadedFail());
    }
  }
}
