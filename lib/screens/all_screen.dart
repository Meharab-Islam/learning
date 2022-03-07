import 'package:flutter/material.dart';
import 'package:pr/designs/main_page_image.dart';

class All_Screen extends StatefulWidget {
  const All_Screen({Key? key}) : super(key: key);

  @override
  State<All_Screen> createState() => _All_ScreenState();
}

class _All_ScreenState extends State<All_Screen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        SizedBox(
          height: 25,
        ),
        Main_page_image(),
        SizedBox(
          height: 13,
        ),
        Text(
          'Keep notes orgnized. Get Started',
          style: TextStyle(
              fontSize: 21, color: Colors.grey, fontWeight: FontWeight.w800),
        )
      ]),
    );
  }
}
