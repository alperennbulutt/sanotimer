import 'package:flutter/material.dart';

class AlertDialogBaglatiWidget extends StatelessWidget {
  const AlertDialogBaglatiWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("bluetooth bağlantısı gerçekleşmedi...")),
    );
  }
}
