import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanotimer/widgets/baglanButtonWidget.dart';

class BaglanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Boyut değiştirirken kulanılan değişken _size
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Ekrandaki mesaj
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Cihaza bağlanmak için BAĞLAN düğmesine tıklayınız',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: _size.height * 0.023),
                    ),
                  ),
                ),

                //Bağlan Butonu
                BaglanButton(size: _size),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
