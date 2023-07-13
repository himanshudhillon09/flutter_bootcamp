import 'package:flutter/material.dart';
import 'Question.dart';

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatefulWidget {
  const Quizzler({super.key});

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<Icon> scoreKeeper = [];
  int questionNo = 0;

  List<Question> Questionbank = [
    Question('Can monkeys communicate in human language ?', false),
    Question('Is moon our natural satellite ?', true),
    Question('Is python faster than C++ ?', false),
    Question('Is flutter an open source language ?', true),
    Question('Is flutter developed by google ?', true),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent[200],
          title: Center(child: Text('Quizzer')),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextButton(
                  child: Text(
                    Questionbank[questionNo].ques,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ),
              Card(
                color: Colors.greenAccent,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: TextButton(
                  child: Text('Yes'),
                  onPressed: () {
                    if (Questionbank[questionNo].ans == true) {
                      print('User is correct');
                    } else
                      print('User is Wrong');

                    setState(() {
                      questionNo++;
                    });
                  },
                ),
              ),
              Card(
                color: Colors.redAccent,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: TextButton(
                  child: Text('No'),
                  onPressed: () {
                    if (Questionbank[questionNo].ans == false) {
                      print('User is Correct');
                    } else
                      print('User is Wrong');
                    setState(() {
                      questionNo++;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
