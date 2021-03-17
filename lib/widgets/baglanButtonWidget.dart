import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sanotimer/screens/homeScreen.dart';

import 'alertDialogBaglantiWidget.dart';

class BaglanButton extends StatelessWidget {
  const BaglanButton({
    Key key,
    @required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    //bluetooth bağlantısı kontrolü
    bool bluetooth = true;
    return GestureDetector(
      onTap: () {
        if (bluetooth == true) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        } else if (bluetooth == false) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AlertDialogBaglatiWidget()),
          );
        }
      },
      child: Container(
        width: _size.width * 0.8,
        height: _size.height * 0.08,
        color: Color(0xFFFC3838),
        child: Center(
            child: Text(
          'Bağlan',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: _size.width * 0.08),
        )),
      ),
    );
  }
}
