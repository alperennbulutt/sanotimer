import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:sanotimer/screens/mainScreen.dart';
import 'package:sanotimer/baglan.dart';

void main() {
  runApp(BaglantiBT());
}

class BaglantiBT extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SanoTimer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FutureBuilder(
        future: FlutterBluetoothSerial.instance.requestEnable(),
        builder: (context, future) {
          if (future.connectionState == ConnectionState.waiting) {
            return Scaffold(
              body: Container(
                height: double.infinity,
                child: Center(
                  child: Icon(
                    Icons.bluetooth_disabled,
                    size: 200.0,
                    color: Colors.blue,
                  ),
                ),
              ),
            );
          } else if (future.connectionState == ConnectionState.done) {
            // return MyHomePage(title: 'Flutter Demo Home Page');
            return Home();
          } else {
            return Home();
          }
        },
        // child: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
    return materialApp;
  }
}

class Home extends StatelessWidget {
  get device => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('SanoTimer'),
      ),
      //
      body: SelectBondedDevicePage(
        onCahtPage: (device1) async {
          return Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SanoTimerApp(server: device);
              },
            ),
          );
        },
      ),
    ));
  }
}
