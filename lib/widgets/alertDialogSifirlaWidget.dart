import 'package:flutter/material.dart';

import 'alertDialogSifirlandi.dart';

class AlertDialogSifirlaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFAF6F2),
      child: AlertDialog(
        title: Text("Tüm verileriniz sıfırlanacaktır."),
        content: Text('Sıfırlama işleminden emin misiniz?'),

        actions: [
          
          TextButton(
            child: Text("Evet"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                            builder: (context) => AlertDialogSifirlandiWidget()));
            },
          ),
          TextButton(
            child: Text("Hayır"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
