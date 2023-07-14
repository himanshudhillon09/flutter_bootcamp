import 'Question.dart';

int questionNo = 0;
int refNo = 0;

class QuizBrain {
  List<Question> _Questionbank = [
    Question('Can monkeys communicate in human language ?', false),
    Question('Is moon our natural satellite ?', true),
    Question('Is python faster than C++ ?', false),
    Question('Is flutter an open source language ?', true),
    Question('Is flutter developed by google ?', true),
    Question('Git is a web development tool ?', false),
    Question('Twitter is aquired by google ?', false),
  ];

  int getNum() {
    return _Questionbank.length;
  }

  void nextQues() {
    refNo++;
    if (questionNo < _Questionbank.length - 1) {
      questionNo++;
    }
  }

  String getQues() {
    return _Questionbank[questionNo].ques;
  }

  bool getAns() {
    return _Questionbank[questionNo].ans;
  }
}
