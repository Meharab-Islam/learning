import 'package:flutter/material.dart';
import 'package:pr/designs/drawers.dart';
import 'package:pr/designs/main_page_image.dart';
import 'package:pr/screens/Homepage.dart';
import 'package:pr/screens/all_screen.dart';
import 'package:pr/screens/note_add_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        drawer: Custom_Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          actions: [
            InkWell(
              child: Image.network(
                'https://w7.pngwing.com/pngs/890/416/png-transparent-vip-logo-all-caps-typeface-vip-gold-metal-designer-thumbnail.png',
                height: 20,
                width: 42,
              ),
              onTap: () {},
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 28,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 28,
              ),
            ),
          ],
          bottom: TabBar(
            padding: EdgeInsets.all(7),
            // isScrollable: true,
            labelColor: Color(0xFF343434),
            indicator: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            unselectedLabelColor: Color(0xFFc9c9c9),
            tabs: [
              Text(
                'All',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Home',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'work',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            All_Screen(),
            Home_Screen(),
            Center(
              child: Text('work'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NoteAddScreen(),
              ),
            );
          },
          child: Container(
            height: 60,
            width: 60,
            child: Icon(Icons.add),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color.fromARGB(255, 91, 199, 241), Colors.blue],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
