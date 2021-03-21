import 'package:flutter/material.dart';
import 'package:sanotimer/screens/sulamaGunleriScreen.dart';
import 'package:sanotimer/screens/sulamaSuresiScreen.dart';
import 'package:sanotimer/screens/tarihZamanScreen.dart';
import 'package:sanotimer/screens/testModuScreen.dart';
import 'package:sanotimer/widgets/alertDialogSifirlaWidget.dart';
import 'package:sanotimer/widgets/alertDialogUyariWidget.dart';
import 'baslamaZamaniScreen.dart';
import 'manuelAyarlamaScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFAF6F2),
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Color(0xFFEDD3C1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          title: Text(
            "SanoTimer",
            style: TextStyle(color: Colors.black, fontSize: _size.width * 0.1),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //aç kapa butonu
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AlertDialogUyariWidget()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          color: Colors.red),
                      height: _size.height * 0.12,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                            child: Text(
                          'Aç/Kapa',
                          style: TextStyle(
                            fontSize: _size.width * 0.08,
                          ),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              //Manuel Ayarlama butonu
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ManuelAyarlamaScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF8EC5FC)),
                        height: _size.height * 0.13,
                        width: _size.width * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                              child: Text(
                            'Manuel Ayarlama',
                            style: TextStyle(fontSize: 30),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //Tarih/Zaman ve Sulama günleri Butonları
              Row(
                children: [
                  //Tarih/zaman butonu
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TarihZamanScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF8EC5FC)),
                        height: _size.height * 0.13,
                        width: _size.width * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                              child: Text(
                            'Tarih/Zaman',
                            style: TextStyle(fontSize: 30),
                          )),
                        ),
                      ),
                    ),
                  ),
                  //Sulama Günleri
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SulamaGunleriScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF8EC5FC)),
                        height: _size.height * 0.13,
                        width: _size.width * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                              child: Text(
                            'Sulama Günleri',
                            style: TextStyle(fontSize: 25),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //Sulama süresi ve Başlama zamanı süresi butonları
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Sulama Süresi butonu
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SulamaSuresiScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF8EC5FC)),
                        height: _size.height * 0.13,
                        width: _size.width * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                              child: Text(
                            'Sulama Süresi',
                            style: TextStyle(fontSize: 25),
                          )),
                        ),
                      ),
                    ),
                  ),
                  //Başlama zamanı butonu
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BaslamaZamaniScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF8EC5FC)),
                        height: _size.height * 0.13,
                        width: _size.width * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                              child: Text(
                            'Başlama Zamanı',
                            style: TextStyle(fontSize: 23),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //Sıfırla ve test modu butonları
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Sıfırla butonu
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => AlertDialogSifirlaWidget()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF8EC5FC)),
                        height: _size.height * 0.13,
                        width: _size.width * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                              child: Text(
                            'Sıfırla',
                            style: TextStyle(fontSize: 25),
                          )),
                        ),
                      ),
                    ),
                  ),
                  //Test modu butonu
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TestModuScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF8EC5FC)),
                        height: _size.height * 0.13,
                        width: _size.width * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                              child: Text(
                            'Test Modu',
                            style: TextStyle(fontSize: 23),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
