import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/manage/dark_and_light_cubit.dart';
import 'package:quran/manage/dark_and_light_state.dart';
class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<DarkAndLightCubit, DarkAndLightState>(
          bloc: context.read<DarkAndLightCubit>(),
          builder: (context, snapshot) {
            return ElevatedButton(onPressed: (){
              context.read<DarkAndLightCubit>().changeTheme();
            }, child: Text(
              "Change Theme Mode"
            ),);
          }
        ),
      ],
    );
  }
}
