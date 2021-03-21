import 'package:flutter/material.dart';

class BaslamaZamaniScreen extends StatefulWidget {
  @override
  _BaslamaZamaniScreenState createState() => _BaslamaZamaniScreenState();
}

class _BaslamaZamaniScreenState extends State<BaslamaZamaniScreen> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFAF6F2),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SafeArea(
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          FloatingActionButton(
                            backgroundColor: Colors.black,
                            child: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                incrementCounter();
                              });
                            },
                          ),
                          Text(
                            'Program Ekle',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: _size.height * 0.65,
              margin: EdgeInsets.only(top: 120),
              child: ListView.builder(
                itemCount: counter.clamp(0, 8),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Program :SS:DD',
                          labelStyle:
                              TextStyle(fontSize: 20.0, color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 100, left: 50, right: 50),
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
            ),
          ],
        ),
      ),
    );
  }
}
