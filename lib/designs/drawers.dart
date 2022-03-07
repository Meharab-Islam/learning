import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Custom_Drawer extends StatefulWidget {
  const Custom_Drawer({Key? key}) : super(key: key);

  @override
  State<Custom_Drawer> createState() => _Custom_DrawerState();
}

class _Custom_DrawerState extends State<Custom_Drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'Note App',
                  style: TextStyle(
                      fontSize: 52,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 245, 125, 46)),
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
                                  style: TextStyle(fontSize: 28),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Text('Unlock all features')
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
                    colors: [Color.fromARGB(255, 91, 199, 241), Colors.blue],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
