import 'package:flutter/material.dart';


class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
            "assets/picture/radio images/551-5517026_radio-vector-png-old-radio-png-vector-transparent@2x.png"),
        Padding(
          padding: const EdgeInsets.all(11.5),
          child: Text(
            "إذاعة القرآن الكريم",
            style:
                TextStyle(fontSize: 50, color: Theme.of(context).primaryColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      InkWell(
          child: Image.asset(
              "assets/picture/radio images/Icon metro-next.png",
              height: 23.5,
              width: 13),
          onTap: () {

          },
                      ),
                      InkWell(
          child: Image.asset(
              "assets/picture/radio images/Icon awesome-play.png",
              height: 36.5,
              width: 31.5),
          onTap: () {},
                      ),
                      InkWell(
          child: Image.asset(
            "assets/picture/radio images/Icon metro-next2.png",
            height: 23.5,
            width: 13,
          ),
          onTap: () {},
                      ),
                    ]),
        ),
        Spacer(),
      ],
    );
  }
}
