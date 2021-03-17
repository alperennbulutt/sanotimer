import 'package:flutter/material.dart';
import 'package:sanotimer/screens/homeScreen.dart';

class AlertDialogSifirlandiWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFAF6F2),
      child: AlertDialog(
        title: Text("Tüm verileriniz sıfırlandı."),
        actions: [
          TextButton(
            child: Text("Tamam"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
        ],
      ),
    );
  }
}
