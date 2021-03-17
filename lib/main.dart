import 'package:flutter/material.dart';
import 'package:sanotimer/screens/baglanScreen.dart';


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
        body: BaglanScreen(),
      ),
    );
  }
}
