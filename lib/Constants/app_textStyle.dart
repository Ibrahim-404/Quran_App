import 'package:flutter/material.dart';
class AppTextStyle{
  static  TextStyle Regular25(BuildContext context){
  return TextStyle(

    fontFamily: "AmiriQuran",
    fontSize: 25,
    color: Theme.of(context).colorScheme.primary,

  );
  }
  static  TextStyle semibold20(BuildContext context) => TextStyle(
    fontFamily: "AmiriQuran",
    fontSize: 20,
    color: Theme.of(context).colorScheme.primary,
  );
  static  regular20(BuildContext context) => TextStyle(
    fontFamily: "AmiriQuran",
    fontSize: 20,
    color: Theme.of(context).colorScheme.onPrimary,
  );

  static  Bold30(BuildContext context) => TextStyle(
    fontFamily: "AmiriQuran",
    fontSize: 30,
    color: Colors.black,
  );

}