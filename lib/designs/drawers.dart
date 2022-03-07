import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pr/screens/Homepage.dart';

class Custom_Drawer extends StatefulWidget {
  const Custom_Drawer({Key? key}) : super(key: key);

  @override
  State<Custom_Drawer> createState() => _Custom_DrawerState();
}

class _Custom_DrawerState extends State<Custom_Drawer> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ColorfulSafeArea(
        color: Color.fromARGB(255, 128, 123, 123),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Note App',
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 245, 125, 46)),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.clear,
                          size: 30,
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 20),
                height: 110,
                width: 280,
                child: Center(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Get Premium',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Text(
                                  'Unlock all features',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 40,
                            padding: EdgeInsets.all(8),
                            child: Center(
                              child: Text(
                                'Get',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ]),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 241, 218, 91),
                      Color.fromARGB(255, 230, 154, 40)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.note),
                title: Text('Note'),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.calendar_month),
                title: Text('Calender'),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.alarm_rounded),
                title: Text('Reminder'),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.download),
                title: Text('Archive'),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.cloud_upload),
                title: Text('Backup & Restore'),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Color.fromARGB(255, 197, 194, 194),
              ),
              SizedBox(
                height: 8,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.widgets),
                title: Text('Widgets'),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.question_mark_rounded),
                title: Text('FAQ'),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.facebook_rounded),
                title: Text('Follow Us'),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.more),
                title: Text('More App'),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              SizedBox(
                height: 8,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.switch_access_shortcut),
                title: Text('Switch'),
                trailing: Container(
                  child: Switch(
                    activeColor: Colors.blue,
                    value: status,
                    onChanged: (value) {
                      print("VALUE : $value");
                      setState(() {
                        status = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
