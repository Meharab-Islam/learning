import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List data = [
    {'name': 'Nibir', 'age': '17'},
    {'name': 'Meharab', 'age': '16'},
    {'name': 'Nasim', 'age': '15'},
    {'name': 'Nasim', 'age': '15'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            data[index]['name'],
          ),
          trailing: Text(
            data[index]['age'],
          ),
        ),
      ),
    );
  }
}
