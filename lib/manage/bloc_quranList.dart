import 'package:bloc/bloc.dart';
import 'package:quran/manage/blocState_quranList.dart';
import 'package:quran/services/api_services/Fetch_Quran_ListName.dart';
import 'package:quran/services/models/quran_list%20of%20surah/model_quran_List.dart';
class QuranListCubit extends Cubit<quranListState> {
  QuranListCubit() : super(initialState());
  Fetch_Quran_ListName fetch_quran_listName = Fetch_Quran_ListName();
  Future<void> fetchQuranList() async {
    try {
      emit(LoadingState());
      final response = await fetch_quran_listName.getQuranListName();
      if (response != null && response.data.isNotEmpty) {
        emit(LoadedSuccessState(quranList: response));
      } else {
        emit(LoadedFailState());
      }
    } catch (e) {
      emit(LoadedFailState());
      print(e);
    }
  }
}
