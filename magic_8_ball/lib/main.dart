import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(child: Text('ASK ME ANYTHING')),
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int BallNumber = 1;
  void RandGen() {
    BallNumber = Random().nextInt(4) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          child: Image.asset('images/ball$BallNumber.png'),
          onPressed: () {
            print(BallNumber);
            setState(() {
              RandGen();
            });
          },
        ),
      ),
    );
  }
}
