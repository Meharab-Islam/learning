import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Main_page_image extends StatefulWidget {
  const Main_page_image({Key? key}) : super(key: key);

  @override
  State<Main_page_image> createState() => _Main_page_imageState();
}

class _Main_page_imageState extends State<Main_page_image> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Lottie.network(
          'https://assets4.lottiefiles.com/packages/lf20_ecsh092g.json'),
    );
  }
}
