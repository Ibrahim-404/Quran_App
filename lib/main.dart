import 'package:flutter/material.dart';

void main() {
  runApp(Quran());
}

class Quran extends StatelessWidget {
  const Quran({super.key, Widgy});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
theme: ThemeData(
  useMaterial3: true,

),
    );
  }
}
