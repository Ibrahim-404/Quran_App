import 'package:bloc/bloc.dart';
import 'package:quran/manage/blocState_quranList.dart';
import 'package:quran/services/api_services/Fetch_Quran_ListName.dart';
import 'package:quran/services/models/model_quran_List.dart';
class QuranListCubit extends Cubit<quranListState> {
  QuranListCubit() : super(initialState());
  Fetch_Quran_ListName fetch_quran_listName = Fetch_Quran_ListName();
  late QuranList quranList;
  Future<void> fetchQuranList() async {
    try {
      final respponse = await fetch_quran_listName.getQuranListName();
      emit(LoadingState());
      if (respponse.isNotEmpty) {
        quranList = QuranList.fromJson(respponse);
        emit(LoadedSuccessState(quranList: quranList));
      }
    } on Exception catch (e) {
      emit(LoadedFailState());
      print(e);
    }
  }
}
