import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[900],
        body: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: double.infinity,
              color: Colors.red,
              width: 100.0,
              margin: EdgeInsets.symmetric(vertical: 50),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
            Container(
              height: double.infinity,
              width: 100,
              color: Colors.blueAccent,
              margin: EdgeInsets.symmetric(vertical: 50),
            ),
          ],
        )),
      ),
    );
    ;
  }
}
