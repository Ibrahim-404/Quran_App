import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/manage/blocState_quranList.dart';
import 'package:quran/manage/bloc_quranList.dart';
import 'package:quran/view/presenation/component/suraAndNumberOfAya.dart';

class QuranList extends StatefulWidget {
  const QuranList({super.key});

  @override
  State<QuranList> createState() => _QuranListState();
}

class _QuranListState extends State<QuranList> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Fetch the Quran list when the widget is built
    context.read<QuranListCubit>().fetchQuranList();
}
  @override
  Widget build(BuildContext context) {
    // Fetch the Quran list when the widget is built
return BlocBuilder<QuranListCubit, quranListState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is LoadedSuccessState) {
          return ListView.builder(
            itemCount: state.quranList.data.length,
            itemBuilder: (context, index) {
              final sura = state.quranList.data[index];
              return Suraandnumberofaya(
                number:sura.number,
                revelationType:sura.revelationType.name,
                suraName: sura.name,
                numberOfAya: sura.numberOfAyahs.toString(),
              );
            },
          );
        } else {
          return const Center(child: Text("There is an error😒"));
        }
      },
    );
  }
}