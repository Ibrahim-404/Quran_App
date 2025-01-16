import 'package:flutter/material.dart';
import 'package:quran/Constants/app_textStyle.dart';

class Suraandnumberofaya extends StatelessWidget {
  String suraName, numberOfAya,revelationType;
  int number;
  Suraandnumberofaya(
      {super.key, required this.suraName, required this.numberOfAya,required this.number,required this.revelationType });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: (){
            Navigator.pushNamed(context, '/QuranScreen',arguments: number);
          },
          title:Text("$number",style: AppTextStyle.semibold20(context),),
          subtitle:Text(revelationType,style: AppTextStyle.semibold20(context),),
          leading: Text(
            numberOfAya,
            style: AppTextStyle.semibold20(context),
          ),
          trailing: Text(
            suraName,
            style: AppTextStyle.semibold20(context),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          endIndent: 20,
          thickness: 1.5,
          indent: 20,
        )
      ],
    );
  }
}
