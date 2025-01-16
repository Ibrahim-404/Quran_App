part of 'surah_and_aya_cubit.dart';

@immutable
sealed class SurahAndAyaState {}

final class SurahAndAyaInitial extends SurahAndAyaState {}

final class SurahAndAyaLoading extends SurahAndAyaState {}

final class SurahAndAyaLoadedSccess extends SurahAndAyaState {
  final SuraInQuran surah;
  SurahAndAyaLoadedSccess({required this.surah});
}

final class SurahAndAyaLoadedFail extends SurahAndAyaState {}
