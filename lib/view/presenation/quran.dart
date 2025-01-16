import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/Constants/app_textStyle.dart';
import 'package:quran/manage/surah/surah_and_aya_cubit.dart';
import 'package:quran/view/presenation/component/surahPageView.dart';

class Quran extends StatefulWidget {
  final int surahNumber;

  Quran({super.key, required this.surahNumber});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<SurahAndAyaCubit>().surahNumber = widget.surahNumber;
    context.read<SurahAndAyaCubit>().changeSurahAndAya();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/picture/bg3.png',
              fit: BoxFit.fill,
            ),
          ),
          // App Name
          Positioned(
            top: 80,
            left: MediaQuery.of(context).size.width / 2 - 40,
            right: MediaQuery.of(context).size.width / 2 - 40,
            child: Text(
              "أقرأ",
              style: AppTextStyle.Bold30(context),
              textAlign: TextAlign.center,
            ),
          ),

          // Ayah Content with BlocBuilder
          Positioned.fill(
            top: 150,
            child: Card(
              surfaceTintColor: Colors.grey,
              elevation: 10,
              color: Color(0XFFF8F8F8),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: BlocBuilder<SurahAndAyaCubit, SurahAndAyaState>(
                bloc: context.read<SurahAndAyaCubit>(),
                builder: (context, state) {
                  if (state is SurahAndAyaLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is SurahAndAyaLoadedSccess) {
                    return Surahpageview();
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
            ),
          ),
        ],
      ),
    );
  }
}
