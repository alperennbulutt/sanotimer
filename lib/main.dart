import 'package:flutter/material.dart';
import 'Screens/baglan.dart';

void main() {
  runApp(SanoTimerApp());
}

class SanoTimerApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Color(0xFFEDD3C1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          title: Center(
            child: Text(
              "SanoTimer",
              style: TextStyle(color: Colors.black, fontSize: 35),
            ),
          ),
        ),
        body: BaglanScreen(),
      ),
    );
  }
}
