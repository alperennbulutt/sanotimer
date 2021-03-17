import 'package:flutter/material.dart';

class AlertDialogUyariWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFAF6F2),
      child: AlertDialog(
        title: Text("Aç/Kapa işlemi gerçekleştirildi"),
        actions: [
          TextButton(
            child: Text("Tamam"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
