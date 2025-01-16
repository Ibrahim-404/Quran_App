import 'package:quran/services/models/quran_list%20of%20surah/model_quran_List.dart';

class quranListState {}

class initialState extends quranListState {}

class LoadingState extends quranListState {}

class LoadedSuccessState extends quranListState {
  late QuranList quranList;
  LoadedSuccessState({required this.quranList});
}

class LoadedFailState extends quranListState {}
