import 'package:flutter/material.dart';
import 'package:quran/view/presenation/hadith.dart';
import 'package:quran/view/presenation/quran.dart';
import 'package:quran/view/presenation/radio.dart';
import 'package:quran/view/presenation/sebha.dart';

class ManageScreen extends StatefulWidget {
  const ManageScreen({super.key});
  @override
  State<ManageScreen> createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen> {
  @override
  Widget build(BuildContext context) {
    int screenIndex = 0;
    final List<Widget> bottomNavigationScreens = [
      const RadioScreen(),
      const Sebha(),
      const Hadith(),
      const Quran(),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: screenIndex,
          onTap: (int value) {
            screenIndex = value;
            setState(() {});
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                  "assets/picture/botomNavigationBarAssets/radio.png"),
              label: "radio",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                  "assets/picture/botomNavigationBarAssets/sebha.png"),
              label: "sebha",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                  "assets/picture/botomNavigationBarAssets/quran-quran-svgrepo-com.png"),
              label: "Hadiths",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                  "assets/picture/botomNavigationBarAssets/quran.png"),
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
          bottomNavigationScreens[screenIndex],
        ],
      ),
    );
  }
}
