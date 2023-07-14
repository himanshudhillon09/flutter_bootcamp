import 'package:flutter/material.dart';
import 'Question.dart';
import 'QuizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//Created Object to access data
QuizBrain quizBrain = QuizBrain();
//get length of question bank
int QuizLength = quizBrain.getNum();

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.indigo[400],
          title: Center(child: Text('Quizzer')),
        ),
        body: SafeArea(
          child: QuizPage(),
        ),
      ),
    );
    ;
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreDisplay = [];

  void isFinished() {
    if (refNo == QuizLength) {
      Alert(
              context: context,
              title: "Quiz end here !!",
              desc: "Resetting back to start")
          .show();
      scoreDisplay.clear();
      questionNo = 0;
      refNo = 0;
    }
  }

  void scoreChecker(bool correctAns) {
    setState(() {
      quizBrain.nextQues();
      if (quizBrain.getAns() == correctAns) {
        scoreDisplay.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else
        scoreDisplay.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextButton(
            child: Text(
              quizBrain.getQues(),
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
              scoreChecker(true);
              isFinished();
            },
          ),
        ),
        Card(
          color: Colors.redAccent,
          margin: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          child: TextButton(
            child: Text('No'),
            onPressed: () {
              scoreChecker(false);
              isFinished();
            },
          ),
        ),
        Row(
          children: scoreDisplay,
        ),
      ],
    );
  }
}
