import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/Constants/app_textStyle.dart';
import 'package:quran/manage/surah/surah_and_aya_cubit.dart';

class Surahpageview extends StatelessWidget {
  Surahpageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocBuilder<SurahAndAyaCubit, SurahAndAyaState>(
        bloc: context.read<SurahAndAyaCubit>(),
        builder: (context, state) {
          if (state is SurahAndAyaLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SurahAndAyaLoadedSccess) {
            final surah = state.surah.data;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    surah.name,
                    style: AppTextStyle.Regular25(context),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  endIndent: 50,
                  indent: 50,
                  thickness: 1.5,
                ),

                Expanded(
                  child: SingleChildScrollView(
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 5.0,
                      runSpacing: 10.0,
                      textDirection: TextDirection.rtl,
                      children: surah.ayahs.map((ayah) {
                        return RichText(
                          textDirection: TextDirection.rtl,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:ayah.text.contains("بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ")?ayah.text.replaceFirst("","الرَّحِيمِ"): ayah.text,
                                style: AppTextStyle.regular20(context),
                              ),
                              TextSpan(
                                text: "(${ayah.numberInSurah}) ",
                                style: AppTextStyle.regular20(context),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            );
          } else if (state is SurahAndAyaLoadedFail) {
            return const Center(
              child: Text(
                "There is an error😒",
                style: TextStyle(fontSize: 18, color: Colors.redAccent),
              ),
            );
          } else {
            return const Center(
              child: Text(
                "There is an error😒",
                style: TextStyle(fontSize: 18, color: Colors.redAccent),
              ),
            );
          }
        },
      ),
    );
  }
}