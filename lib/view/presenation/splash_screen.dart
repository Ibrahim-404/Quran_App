import 'package:flutter/material.dart';
import 'package:quran/Constants/light_mode.dart';

class Quran_SplashScreen extends StatefulWidget {
  const Quran_SplashScreen({super.key});
  @override
  State<Quran_SplashScreen> createState() => _Quran_SplashScreenState();
}

class _Quran_SplashScreenState extends State<Quran_SplashScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 1).animate(controller);
    controller.forward();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, '/ManageScreen');
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf9f9f9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: animation,
              child: Image.asset('assets/picture/quran.png'),
            ),
            const Text(
              "أقرأ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'AmiriQuran'),
            )
          ],
        ),
      ),
    );
  }
}
