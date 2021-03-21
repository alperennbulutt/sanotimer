import 'package:flutter/material.dart';

class SulamaGunleriScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFAF6F2),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 10),
                  child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'PAZARTESİ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      textColor: Colors.black,
                      highlightColor: Colors.redAccent,
                      minWidth: 200,
                      height: 40,
                      shape: Border.all(width: 2.0, color: Colors.black)),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 10),
                  child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'SALI',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      textColor: Colors.black,
                      highlightColor: Colors.redAccent,
                      minWidth: 200,
                      height: 40,
                      shape: Border.all(width: 2.0, color: Colors.black)),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 10),
                  child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'ÇARŞAMBA',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      textColor: Colors.black,
                      highlightColor: Colors.redAccent,
                      minWidth: 200,
                      height: 40,
                      shape: Border.all(width: 2.0, color: Colors.black)),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 10),
                  child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'PERŞEMBE',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      textColor: Colors.black,
                      highlightColor: Colors.redAccent,
                      minWidth: 200,
                      height: 40,
                      shape: Border.all(width: 2.0, color: Colors.black)),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 10),
                  child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'CUMA',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      textColor: Colors.black,
                      highlightColor: Colors.redAccent,
                      minWidth: 200,
                      height: 40,
                      shape: Border.all(width: 2.0, color: Colors.black)),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 10),
                  child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'CUMARTESİ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      textColor: Colors.black,
                      highlightColor: Colors.redAccent,
                      minWidth: 200,
                      height: 40,
                      shape: Border.all(width: 2.0, color: Colors.black)),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 10),
                  child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'PAZAR',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      textColor: Colors.black,
                      highlightColor: Colors.redAccent,
                      minWidth: 200,
                      height: 40,
                      shape: Border.all(width: 2.0, color: Colors.black)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.red),
                  height: _size.height * 0.12,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Center(
                        child: Text(
                      'GÖNDER',
                      style: TextStyle(
                        fontSize: _size.width * 0.09,
                      ),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
