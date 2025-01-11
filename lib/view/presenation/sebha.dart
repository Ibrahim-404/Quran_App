import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/Constants/app_textStyle.dart';
import 'package:quran/manage/seb7a/se7a_counter_cubit.dart';

class Sebha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? tesbeh;
    return BlocProvider(
      create: (context) => Se7aCounterCubit(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/picture/seb7a image/WhatsApp Image 2025-01-10 at 14.50.14_3639ed8b.jpg",
            width: 230,
            height: 234,
          ),
          Text(
            "عدد التسبيحات",
            style: AppTextStyle.Regular25(context),
          ),
          BlocBuilder<Se7aCounterCubit, Se7aCounterState>(
            builder: (context, state) {
              final counter = (state is Se7aCounterIncreasing)
                  ? state.counter
                  : 0; // Default to 0 if not increasing
              final lastTasbeeh = (state is Se7aCounterIncreasing)
                  ? state.lastTasbeeh // Get the last tasbeeh
                  : "سبحان الله"; // Default tasbeeh

              return Card(
                color: Theme.of(context).cardColor,
                child: Text(
                  '$counter',
                  style: AppTextStyle.regular20(context),
                ),
              );
            },
          ),
          BlocListener<Se7aCounterCubit, Se7aCounterState>(
            listener: (context, state) async {
              if (state is Se7aCounterComplete100Times) {
                await AwesomeDialog(
                  context: context,
                  dialogType: DialogType.info,
                  animType: AnimType.rightSlide,
                  title: '🎉 لقد اتممت مائه تسبيحه',
                  desc: state.message,
                  btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                  titleTextStyle: AppTextStyle.regular20(context),
                )..show();
              }
            },
            child: BlocBuilder<Se7aCounterCubit, Se7aCounterState>(
              builder: (context, state) {
                String buttonText = (state is Se7aCounterComplete100Times)
                    ? state.tesbeh
                    : (state is Se7aCounterIncreasing ? state.lastTasbeeh : "سبحان الله"); // Use last
                return TextButton(
style: Theme.of(context).textButtonTheme.style,
                  onPressed: () => context.read<Se7aCounterCubit>().increment(),
                  child: Text(
                    buttonText,
                    style: AppTextStyle.regular20(context),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
