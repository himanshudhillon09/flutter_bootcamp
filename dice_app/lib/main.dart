import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dice App')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 2;
  void changedicenum() {
    leftdicenumber = Random().nextInt(6) + 1;
    rightdicenumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftdicenumber.png'),
              onPressed: () {
                setState(() {
                  changedicenum();
                });
                ;
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightdicenumber.png'),
              onPressed: () {
                setState(() {
                  changedicenum();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
