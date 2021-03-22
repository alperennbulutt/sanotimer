import 'package:flutter/material.dart';
import 'package:sanotimer/screens/baglanScreen.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

void main() {
  runApp(SanoTimerApp());
}

class SanoTimerApp extends StatelessWidget {
  final BluetoothDevice server;
  const SanoTimerApp({this.server});
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
