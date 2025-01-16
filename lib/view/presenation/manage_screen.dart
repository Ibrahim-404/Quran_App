import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/manage/dark_and_light_cubit.dart';
import 'package:quran/manage/dark_and_light_state.dart';
import 'package:quran/view/presenation/hadith.dart';
import 'package:quran/view/presenation/quranList.dart';
import 'package:quran/view/presenation/radio.dart';
import 'package:quran/view/presenation/sebha.dart';
class ManageScreen extends StatefulWidget {
  const ManageScreen({super.key});
  @override
  State<ManageScreen> createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen> {
  int index = 0;

  @override
  // void initState() {
    // TODO: implement initState
    // context.read<DarkAndLightCubit>().initialize();
  // }
  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomNavigationScreens = [
      const RadioScreen(),
       Sebha(),
      const Hadith(),
      const QuranList(),
    ];
    return BlocBuilder<DarkAndLightCubit, DarkAndLightState>(
        bloc: context.read<DarkAndLightCubit>(),
        builder: (context, snapshot) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
             showUnselectedLabels: false,
              selectedItemColor:Theme.of(context).primaryColor,
              selectedIconTheme: IconThemeData(
                color: Theme.of(context).primaryColor,
              ),
                backgroundColor:
                    Theme.of(context).navigationBarTheme.backgroundColor,
                unselectedFontSize: 15,
                selectedFontSize: 16,
                type: BottomNavigationBarType.fixed,
                currentIndex: index,
                onTap: (int value) {
                  setState(() {
                    index = value;
                    print(value);
                  });
                },
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Image.asset(
                        "assets/picture/botomNavigationBarAssets/radio.png",
                        fit: BoxFit.contain,
                        height: 24,
                        width: 24),
                    label: "radio",
                  ),
                  BottomNavigationBarItem(
                    backgroundColor:
                        Theme.of(context).navigationBarTheme.backgroundColor,
                    icon: Image.asset(
                        "assets/picture/botomNavigationBarAssets/sebha.png",
                        fit: BoxFit.contain,
                        height: 24,
                        width: 24),
                    label: "sebha",
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                        "assets/picture/botomNavigationBarAssets/quran-quran-svgrepo-com.png",
                        fit: BoxFit.contain,
                        height: 24,
                        width: 24),
                    label: "Hadiths",
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                        "assets/picture/botomNavigationBarAssets/moshaf_blue.png",
                        fit: BoxFit.contain,
                        height: 24,
                        width: 24),
                    label: "quran",
                  ),
                ]),
            body: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/picture/bg3.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    top: 80,
                    left: MediaQuery.of(context).size.width / 2 - 25,
                    right: MediaQuery.of(context).size.width / 2 - 25,
                    child: Text(
                      "إقرأ",
                      style: TextStyle(
                        color:Theme.of(context).primaryColor,
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'AmiriQuran'),
                    )),
                Positioned.fill(
                    top: 250, child: bottomNavigationScreens[index]),
              ],
            ),
          );
        });
  }
}
